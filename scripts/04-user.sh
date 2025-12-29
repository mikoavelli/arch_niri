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

echo "-> [User] Additional required setup for 'ideapad' extension"
echo "%wheel ALL=(ALL) NOPASSWD: /usr/bin/tee /sys/bus/platform/drivers/ideapad_acpi/VPC????\:??/conservation_mode" | sudo tee /etc/sudoers.d/ideapad
if ! grep -q "ideapad_laptop" /etc/modules; then
  echo "ideapad_laptop" | sudo tee -a /etc/modules
fi

echo "-> [User] Config gschemas"
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.wm.preferences focus-mode "sloppy"
gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal alacritty
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.privacy disable-camera true
gsettings set org.gnome.desktop.interface icon-theme "MoreWaita"
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-dark"
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrainsMono Nerd Font 12'
gsettings set org.gnome.desktop.interface font-name 'Inter 12'
gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
gsettings set org.gnome.desktop.interface document-font-name 'Inter 12'
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
