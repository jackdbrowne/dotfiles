# load custom executable functions
fpath=(~/.zsh/functions $fpath);
autoload -U $fpath[1]/*(.:t)

for __file__ in ~/.zsh/configs/*.zsh; do
  . $__file__
done
unset __file__

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
