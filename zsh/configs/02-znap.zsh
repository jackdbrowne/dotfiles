source ~/.zsh-plugins/zsh-snap/znap.zsh

znap source ohmyzsh/ohmyzsh
znap source ohmyzsh/ohmyzsh plugins/{git,sudo,command-not-found,aws}

# Load bundles from external repos
znap source zsh-users/zsh-completions
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
export NVM_LAZY_LOAD=true
znap source jackdbrowne/zsh-nvm

# Select theme
znap source romkatv/powerlevel10k
