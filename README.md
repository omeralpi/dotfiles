# Dotfiles

This repository contains my personal dotfiles for maintaining a consistent development environment across different machines.

## 🚀 Quick Start

1. Clone the repository:
```bash
git clone https://github.com/omeralpi/dotfiles.git ~/dotfiles
```

2. Run the sync script:
```bash
cd ~/dotfiles
chmod +x sync.sh
./sync.sh
```

## 📦 Contents

- `.gitconfig`: Git configuration and aliases
- `.gitignore_global`: Global Git ignore patterns
- `.zshrc`: ZSH shell configuration with Oh My Zsh
- `sync.sh`: Synchronization script

## ⚡️ Features

### Sync Script
The `sync.sh` script automatically:
- Creates symbolic links from dotfiles to your home directory
- Backs up existing configuration files (`.bak` extension)
- Syncs changes with the remote repository

### Git Aliases
Useful Git aliases included in `.gitconfig`:

- `git s`: Short status view
- `git l`: View last 20 commits with graph
- `git ll`: Detailed log with graph and author info
- `git uncommit`: Undo last commit (keeps changes staged)
- `git unstage`: Remove files from staging area
- `git go <branch>`: Switch/create branch
- `git amend`: Amend last commit
- `git hotfix`: Amend and force push (use carefully!)

### Prerequisites

- Git
- Zsh
- Oh My Zsh
- curl (for Oh My Zsh installation)

### ZSH Setup
1. Install Oh My Zsh (if not already installed):
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
2. The included `.zshrc` configuration uses the "robbyrussell" theme by default. You can change it by modifying the `ZSH_THEME` variable.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.