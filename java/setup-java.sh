#!/usr/bin/env bash

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
    echo "Could not find cacerts file" > /dev/stderr
fi

# Configure each installed JDK
for versionDir in $javaVersionHome/*/Contents/Home; do
    majorVersion=$(grep 'JAVA_VERSION=' $versionDir/release | sed -E 's/JAVA_VERSION="([0-9]*).*/\1/')
    
    if [ $majorVersion -eq 1 ]; then
        securityDir=$versionDir/jre/lib/security
    else
        securityDir=$versionDir/lib/security
    fi

    if [ ! -d "$securityDir" ]; then
        echo "Could not find security directory for $versionDir" > /dev/stderr
    fi

    sudo cp $certsPath $securityDir
    # sudo chown root:wheel $securityDir/cacerts
    jenv add $versionDir
done

