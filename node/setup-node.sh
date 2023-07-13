#!/usr/bin/env bash

[ -s "$HOME/.nvm/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh"

nvm install lts/fermium --no-progress --default
nvm install lts/gallium --no-progress
nvm install lts/hydrogen --no-progress

