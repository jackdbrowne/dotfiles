#!/usr/bin/env bash

brew_exec=$(command -v brew)

candidates=(/usr/local /opt/homebrew ~/homebrew)
brew_path="/bin/brew"

for c in ${candidates[@]}; do
    candidate="$c$brew_path"
    if [ -f "$candidate" ]; then
        brew_exec="$candidate"
    fi
done


if test -z "$brew_exec"; then
    echo "No brew executable found" > /dev/stderr
    exit -1
fi

exec $brew_exec $@

