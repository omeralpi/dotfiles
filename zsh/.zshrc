#!/usr/bin/env zsh

export ZSH_CUSTOM="$HOME/dev/main/omeralpi-dotfiles/zsh/custom"

for file in "$ZSH_CUSTOM"/*.zsh
do
  if [[ -f "$file" ]]; then
    source "$file"
  fi
done

if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi

[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"