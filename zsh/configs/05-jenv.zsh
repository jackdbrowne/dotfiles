export PATH="$HOME/.jenv/bin:$PATH"
znap eval jenv-init "jenv init -"

if (( $+commands[jenv] ))
then
    znap eval jenv-init 'jenv init -'
fi
