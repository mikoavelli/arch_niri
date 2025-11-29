#!/usr/bin/env bash
set -e

if ! command -v yay &>/dev/null; then
  echo "-> [AUR] Installing yay"
  cd /tmp
  rm -rf yay
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
  cd -
  rm -rf yay
  cd
else
  echo "--> [AUR] yay is already installed"
fi
