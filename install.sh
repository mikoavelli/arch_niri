#!/usr/bin/env bash
set -e

echo "-> Starting Arch Linux: Niri Installation"

# Execute parts
$(dirname $0)/scripts/00-bootstrap.sh
$(dirname $0)/scripts/01-yay.sh
$(dirname $0)/scripts/02-packages.sh
$(dirname $0)/scripts/03-system.sh
$(dirname $0)/scripts/04-user.sh
$(dirname $0)/scripts/05-secureboot.sh

echo "-> [Cleanup] Removing unused dependencies..."
yay -Yc --noconfirm
yay -Scc --noconfirm
flatpak update -y
flatpak repair

echo "--- Setup Complete! Please reboot your system. ---"
