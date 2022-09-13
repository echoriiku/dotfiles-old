# SELinux set to permissive
sudo setenforce 0

# install nix
sh <(curl -L https://nixos.org/nix/install) --no-daemon

wait 1
echo "now restart your terminal and execute the nixpkgs.sh script"
wait 3