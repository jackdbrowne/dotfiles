export PATH="$HOME/.jenv/bin:$PATH"

if (( $+commands[jenv] ))
then
    znap eval jenv-init 'jenv init -'
fi
