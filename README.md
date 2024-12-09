# omeralpi's dotfiles

This repository contains configuration files and setup scripts to easily manage and install `brew` packages, `brew` applications, and `git` configurations on macOS.

## Contents

- **git**: A directory containing `git` configuration files (e1.g., `.gitconfig`)
- **husky**: A directory containing `husky` configuration files
- **zsh**: A directory containing `zsh` configuration files (e.g., `.zshrc`)
- **Brewfile**: A list of all `brew` packages and `cask` applications
- **install.conf.yaml**: A configuration file for `dotbot` to install `brew` packages, `brew` applications, and `git` configurations

## Setup

1. Clone this repository to your local machine

```bash
git clone https://github.com/omeralpi/dotfiles.git
```

2. Run the setup script

```bash
cd dotfiles
chmod +x ./run-dotbot
chmod +x ./install
./install
```

## Todo

- [ ] Add `nvim` configuration files
- [ ] Add `tmux` configuration files

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
