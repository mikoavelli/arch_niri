#!/usr/bin/env bash
set -e

echo "-> Starting Arch Linux: Niri (Noctalia) Installation"

# Make scripts executable just in case
sudo chmod +x scripts/*.sh

# Execute parts
./scripts/00-bootstrap.sh
./scripts/01-yay.sh
./scripts/02-packages.sh
./scripts/03-system.sh
./scripts/04-user.sh
./scripts/05-secureboot.sh

echo "-> [Cleanup] Removing unused dependencies..."
yay -Yc --noconfirm
yay -Scc --noconfirm
flatpak update -y
flatpak repair

echo "--- Setup Complete! Please reboot your system. ---"
