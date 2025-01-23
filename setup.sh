echo "Warning: This script assumes that you have stow installed"
echo "Warning: You need neovim v10+ installed for the nvim config to work properly"

echo ""
echo "Warning: If you have any of the following dotfiles, rename them them to <file_name/folder_name>.backup or something else to avoid conflicts, before running this script"
echo "zshrc: ~/.zshrc"
echo "ghostty: ~/.config/ghostty/config"
echo "tmux.conf: ~/.tmux.conf"
echo "nvim: ~/.config/nvim"
echo "gitconfig: ~/.gitconfig"
echo "fastfetch: ~/.config/fastfetch/config.jsonc"

echo ""
echo "Press Y to continue or any other key to exit"
input=""
read -n 1 -r input
echo "\n"
if [[ $input != "Y" && $input != "y" ]]; then
    echo "exiting"
    exit 1
fi

echo "Setting up dotfiles symlinks"
stow zshrc
stow ghostty
stow tmux.conf
stow nvim
stow gitconfig 
stow fastfetch
