#!/usr/bin/env bash
set -e
source ./config.sh

echo "-> [Pacman] Installing packages..."
sudo pacman -S --needed --noconfirm \
  "${NIRI_CORE[@]}" \
  "${AMD_VIDEO_DRIVERS[@]}" \
  "${ESSENTIAL_PACKAGES[@]}" \
  "${LAZYVIM_DEPS[@]}"

# echo "-> [Flatpak] Installing Flatpak packages..."
# flatpak install flathub -y "${FLATPAK_PACKAGES[@]}"

echo "-> [AUR] Installing yay packages..."
yay -S --needed --noconfirm "${AUR_PACKAGES[@]}"
