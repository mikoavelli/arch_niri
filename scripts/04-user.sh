#!/usr/bin/env bash
set -e

echo "-> [User] Creating SSH config for custom key names"
mkdir -p ~/.ssh
chmod 700 ~/.ssh
if ! grep -q "Host github.com" ~/.ssh/config 2>/dev/null; then
  cat <<EOT | tee -a ~/.ssh/config
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/github
EOT
  chmod 600 ~/.ssh/config
fi

# echo "-> [User] Cloning LazyVim starter"
# if [ ! -d "$HOME/.config/nvim" ]; then
#   git clone https://github.com/LazyVim/starter ~/.config/nvim
# else
#   echo "--> Some nvim config already exists"
# fi

echo "-> [User] Config gschemas"
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal alacritty
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.privacy disable-camera true
gsettings set org.gnome.desktop.interface icon-theme "MoreWaita"
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface font-name 'Inter 12'
gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
gsettings set org.gnome.desktop.interface document-font-name 'Inter 12'
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
