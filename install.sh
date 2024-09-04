#!/bin/bash

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

# Set up XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

# Create symlinks for existing configurations
stow nvim
stow tmux
stow --adopt zsh
git restore .

echo "Setup complete."
