#!/bin/bash

# Get the directory of the script
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install brew packages and applications
if [ -f Brewfile ]; then
    echo "Installing brew packages and applications..."
    xargs brew install < Brewfile
fi

# Link config files
for file in .gitconfig .gitignore_global .bashrc .bash_profile; do
    if [ -f "$DOTFILES_DIR/config/$file" ]; then
        ln -sf "$DOTFILES_DIR/config/$file" "$HOME/$file"
        echo "$file linked successfully."
    else
        echo "Warning: $file not found in $DOTFILES_DIR"
    fi
done

# Link husky init.sh
if [ -f "$DOTFILES_DIR/config/husky/init.sh" ]; then
    mkdir -p "$HOME/.config/husky"
    ln -sf "$DOTFILES_DIR/config/husky/init.sh" "$HOME/.config/husky/init.sh"
    echo "husky/init.sh linked successfully."
else
    echo "Warning: husky/init.sh not found in $DOTFILES_DIR"
fi

# Set up mac configuration
bash "$DOTFILES_DIR/mac/configure-dock.sh"

echo "Setup complete!"
