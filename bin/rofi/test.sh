#!/bin/bash
printf "Script running!\n">&2

if [[ -z $@ ]]; then
        printf 'Option 1\nOption 2\nOption 3'
else
        printf 'You have selected %s' "$#"
fi
