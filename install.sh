#!/bin/bash

# Set up XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"
mkdir -p "$XDG_CONFIG_HOME"/nixpkgs

# Create symlinks for existing configurations
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/config.nix" "$XDG_CONFIG_HOME"/nixpkgs/config.nix

# packages=(
# 	zsh
# 	fzf
# 	stow
# 	lazygit
# 	nvim
# 	tmux
# )
#
# # Iterate over the array and install each package
# for package in "${packages[@]}"; do
# 	echo "Installing $package..."
# 	/home/linuxbrew/.linuxbrew/bin/brew install "$package"
# done

# Install Nix packages from config.nix
nix-env -iA nixpkgs.myPackages

echo "All packages have been installed."

echo "Setup complete."
