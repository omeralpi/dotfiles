if [[ ! -d ~/dev ]]; then
  mkdir -p ~/dev
fi

# TODO: Add support for other package managers
# if [[ ! -d ~/.config ]]; then
#   mkdir -p ~/.config
# fi

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

ln -sf "$DOTFILES/zsh/.zshrc" ~/.zshrc
ln -sf "$DOTFILES/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

source ~/.zshrc