# .dotfiles
This repository contains my macos dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

## Installation
1. Install GNU Stow, git and brew
```bash
# Install brew (if you're on macos)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install git
brew install git
# or (if you're on linux/ubuntu)
sudo apt-get install git

# Install stow
brew install stow
# or (if you're on linux/ubuntu)
sudo apt-get install stow
```
2. Clone the repository
```bash
git clone @github.com:mohits-git/.dotfiles.git
```
3. Install all the brew packages (macos)
```bash
brew bundle --file Brewfile
```
4. Run the setup script
```bash
./setup.sh
```
