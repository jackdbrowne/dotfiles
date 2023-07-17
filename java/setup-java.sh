#!/usr/bin/env bash
set -e

javaPackages=('temurin' 'temurin8' 'temurin11' 'temurin17')
javaVersionHome=/Library/Java/JavaVirtualMachines

# Install and init jenv
brew upgrade jenv || brew install jenv
eval "$(jenv init -)"
jenv enable-plugin export
jenv enable-plugin maven

# Download Java packages from brew
brew tap homebrew/cask-versions
for package in "${javaPackages[@]}"; do
    brew upgrade --cask "$package" || brew install --cask "$package"
done

# Find script path, accounting for any symlinks
# https://stackoverflow.com/a/4774063
scriptPath="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
certsPath=$scriptPath/cacerts

if [ ! -f "$certsPath" ]; then
    echo "No cacerts file found, skipping override" > /dev/stderr
fi

echo "Removing existing jenv aliases"
for jenv_alias in $(jenv versions --bare); do
    jenv remove $jenv_alias
done

# Configure each installed JDK
for versionDir in $javaVersionHome/*/Contents/Home; do
    if [ -f "$certsPath" ]; then
        majorVersion=$(grep 'JAVA_VERSION=' $versionDir/release | sed -E 's/JAVA_VERSION="([0-9]*).*/\1/')
        securityDir=$([ $majorVersion -eq 1 ] && echo "$versionDir/jre/lib/security" || echo "$versionDir/lib/security")

        if [ ! -d "$securityDir" ]; then
            echo "Could not find security directory for $versionDir" > /dev/stderr
        else
            sudo cp $certsPath $securityDir
            # sudo chown root:wheel $securityDir/cacerts
        fi
    fi
    jenv add $versionDir
done

$(jenv rehash)

