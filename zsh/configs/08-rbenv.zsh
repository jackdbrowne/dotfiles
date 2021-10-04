export PATH="$HOME/.rbenv/bin:$PATH"

if (( $+commands[rbenv] ))
then
  znap eval rbenv-init 'rbenv init -'
fi
