#!/bin/bash

# Location of Dotfiles directory
DOTFILES_DIR="$HOME/dotfiles"

# Files to be linked
files=(".gitconfig" ".gitignore_global" ".zshrc")

# Create symbolic links
echo "Creating symbolic links..."
for file in "${files[@]}"; do
    target="$HOME/$file"
    source="$DOTFILES_DIR/$file"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "$target already exists, backing up..."
        mv "$target" "$target.bak"
    fi
    ln -sf "$source" "$target"
    echo "$file linked."
done

echo "Synchronization complete!"