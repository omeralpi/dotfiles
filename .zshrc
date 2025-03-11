# Set the path to Oh My Zsh installation directory
export ZSH="$HOME/.oh-my-zsh"

# Set the theme for Oh My Zsh shell
ZSH_THEME="robbyrussell"

# Enable git plugin for additional git functionality
plugins=(git)

# Load Oh My Zsh with the configured settings
source $ZSH/oh-my-zsh.sh

# Set Docker default platform to linux/amd64 for compatibility
export DOCKER_DEFAULT_PLATFORM=linux/amd64
