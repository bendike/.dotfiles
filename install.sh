#!/bin/bash

packages=(
	zsh
	stow
	lazygit
	nvim
	tmux
)

# Iterate over the array and install each package
for package in "${packages[@]}"; do
	echo "Installing $package..."
	/home/linuxbrew/.linuxbrew/bin/brew install "$package"
done

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)

echo "All packages have been installed."

# Set up XDG_CONFIG_HOME
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

# Create symlinks for existing configurations
stow nvim
stow tmux
stow zsh

echo "Setup complete."
