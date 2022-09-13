# add fish to $SHELLS
command -v fish | sudo tee -a /etc/shells

# use fish as default shell
chsh -s $(which fish) $USER
