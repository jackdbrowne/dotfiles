# znap eval brew-shellenv "/opt/homebrew/bin/brew shellenv"
# TODO: Figure out why caching with znap doesn't work
eval $(~/.bin/find-brew.sh shellenv)
export PATH="$HOMEBREW_PREFIX/bin:$PATH"
