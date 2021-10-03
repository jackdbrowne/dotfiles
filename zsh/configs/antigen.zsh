source "/usr/local/share/zsh/scripts/antigen/antigen.zsh"

# Load oh-my-zsh library
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle sudo
antigen bundle command-not-found
antigen bundle docker

# Load bundles from external repos
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Select theme
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done
antigen apply