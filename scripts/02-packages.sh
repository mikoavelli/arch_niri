#!/usr/bin/env bash
set -e
source ./config.sh

echo "-> Installing packages..."
yay -S --needed --noconfirm \
  "${NIRI_CORE[@]}" \
  "${AMD_VIDEO_DRIVERS[@]}" \
  "${ESSENTIAL_PACKAGES[@]}" \
  "${LAZYVIM_DEPS[@]}" \
  "${AUR_PACKAGES[@]}"

echo "-> [Flatpak] Installing Flatpak packages..."
flatpak install flathub -y "${FLATPAK_PACKAGES[@]}"

echo "-> Configure specific flatpaks"
sudo flatpak override --env=QT_SCALE_FACTOR=1.25 org.kde.okular
sudo flatpak override --env=QT_SCALE_FACTOR=1.25 org.videolan.VLC
sudo flatpak override --env=QT_SCALE_FACTOR=1.25 com.obsproject.Studio
sudo flatpak override --filesystem=$HOME/Downloads org.telegram.desktop
