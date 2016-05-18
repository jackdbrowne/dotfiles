# Load antigen
source /usr/share/zsh/scripts/antigen/antigen.zsh

# Load oh-my-zsh library
antigen use oh-my-zsh

# Bundles from default repo (oh-my-zsh)
antigen bundle git
antigen bundle sudo
antigen bundle vagrant
antigen bundle common-aliases
antigen bundle archlinux

# Syntax highlighting bundle
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme
# antigen theme bira
antigen theme caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply

export BULLETTRAIN_RUBY_BG=red
export BULLETTRAIN_CONTEXT_SHOW=true
# export BULLETTRAIN_CONTEXT_DEFAULT_USER='jack'
