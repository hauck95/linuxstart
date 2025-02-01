i#!/usr/bin/bash

# Update apt
sudo apt-get update

# Setting the display to 1920x1080
xrandr --output $(xrandr | grep " connected" | awk '{print $1}') --mode 1920x1080

# Install stuff
sudo apt install -y neovim tmux git fzf alacritty

#alacritty stuff

# Download and Install a Nerd font
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip &&
  cd ~/.local/share/fonts &&
  unzip JetBrainsMono.zip &&
  rm JetBrainsMono.zip &&
  fc-cache -fv

# config alacritty
mkdir -p ~/.config/alacritty
mkdir alacritty
cd alacritty
touch alacritty.toml
echo -e "[window]\ndecorations = "None"\nstartup_mode = "Fullscreen"\n[font]\nsize\nnormal.family = "JetBrainsMono Nerd Font" = 18" >>alacritty.toml

#install LazyVim distro
git clone https://github.com/LazyVim/starter ~/.config/nvim
