#!/bin/bash

echo "Creating .config directories"
sleep 2

# create config directories
mkdir -pv $HOME/.config/{alacritty,bottom,btop,fish,helix,hypr,kitty,gitui,mpv,tmux,rofi,xplr,zellij}

# symlink the config files
ln -sfv $HOME/myrepos/dotfiles/alacritty/* $HOME/.config/alacritty
ln -sfv $HOME/myrepos/dotfiles/bottom/* $HOME/.config/bottom
ln -sfv $HOME/myrepos/dotfiles/btop/* $HOME/.config/btop
ln -sfv $HOME/myrepos/dotfiles/fish/* $HOME/.config/fish
ln -sfv $HOME/myrepos/dotfiles/helix/* $HOME/.config/helix
ln -sfv $HOME/myrepos/dotfiles/hypr/* $HOME/.config/hypr
ln -sfv $HOME/myrepos/dotfiles/kitty/* $HOME/.config/kitty
ln -sfv $HOME/myrepos/dotfiles/gitui/* $HOME/.config/gitui
ln -sfv $HOME/myrepos/dotfiles/mpv/* $HOME/.config/mpv
ln -sfv $HOME/myrepos/dotfiles/tmux/* $HOME/.config/tmux
ln -sfv $HOME/myrepos/dotfiles/rofi/* $HOME/.config/rofi
ln -sfv $HOME/myrepos/dotfiles/xplr/* $HOME/.config/xplr
ln -sfv $HOME/myrepos/dotfiles/zellij/* $HOME/.config/zellij
ln -sfv $HOME/myrepos/dotfiles/starship.toml $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/.vimrc $HOME 

sleep 3
echo "DONE!!!"