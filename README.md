# .dotfiles
This repository contains my macos dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

## Installation
1. Install GNU Stow, git and brew
```bash
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Install git
brew install git
# Install stow
brew install stow
```
2. Clone the repository
```bash
git clone @github.com:mohits-git/.dotfiles.git
```
3. Install all the brew packages
```bash
brew bundle --file Brewfile
```
4. Run the stow command to symlink the dotfiles
```bash
cd .dotfiles
stow -v -t ~ *
```
> warning : if you have any existing dotfiles, stow will not overwrite them
5. Handle Existing Dotfiles
```bash
# you can use the --adopt option to move your existing dotfiles to the repository
stow -v -t ~ --adopt *
# but be careful, this will move the existing dotfiles to the repository
# you can revert the changes using git
git restore .
# after this you can run the stow command without the --adopt option
stow -v -t ~ *
```
