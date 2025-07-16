#!/bin/bash

sudo apt update && sudo apt upgrade -y

# Install main packages
xargs -a ubuntu-packages.txt sudo apt install -y

# fd binary is called fdfind; symlink it to `fd`
if ! command -v fd &> /dev/null; then
  sudo ln -s $(which fdfind) /usr/local/bin/fd
fi

# Install zsh-syntax-highlighting plugin
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

echo "✅ Done. Remember to add 'zsh-syntax-highlighting' to your ~/.zshrc plugin list."
