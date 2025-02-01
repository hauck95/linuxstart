#!/usr/bin/bash

echo "Update apt"
sudo apt-get update

echo "Setting the display to 1920x1080"
xrandr 1920x1080

echo "Install neovim"
sudo apt install -y neovim

echo "Install tmux"
sudo apt install -y tmux

echo "Install git"
sudo apt install -y git

#alacritty stuff

echo "Download and Install a Nerd font"
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip &&
  cd ~/.local/share/fonts &&
  unzip JetBrainsMono.zip &&
  rm JetBrainsMono.zip &&
  fc-cache -fv

echo "Install alacritty"
sudo apt install alacritty

echo "Make an alacritty config"
cd ~
cd home/mint/.config
mkdir alacritty
cd alacritty
touch alacritty.toml

echo "Write config"
echo -e "[window]\ndecorations = "None"\nstartup_mode = "Fullscreen"\n[font]\nsize\nnormal.family = "JetBrainsMono Nerd Font" = 18" >>alacritty.toml
#lazyvim stuff

echo "Install fzf"
sudo apt install fzf

echo "Install LazyVim Distro"
git clone https://github.com/LazyVim/starter ~/.config/nvim
