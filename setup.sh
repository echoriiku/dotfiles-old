#!/bin/bash

echo "Creating .config directories"
sleep 2

# create config directories
mkdir -pv $HOME/.config/{alacritty,bottom,btop,fish,helix,hypr,kitty,gitui,mpv,tmux,rofi,xplr,zellij}

# symlink the config files
ln -sfv $HOME/myrepos/dotfiles/alacritty/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/bottom/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/btop/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/fish/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/helix/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/hypr/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/kitty/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/gitui/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/mpv/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/tmux/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/rofi $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/xplr/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/zellij/ $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/starship.toml $HOME/.config/
ln -sfv $HOME/myrepos/dotfiles/.vimrc $HOME 

sleep 3
echo "DONE!!!"