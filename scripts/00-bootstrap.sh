#!/usr/bin/env bash
set -e

echo "-> [Bootstrap] Synchronizing package databases..."
sudo pacman -Sy

echo "-> [Bootstrap] Installing prerequisites (git, reflector, base-devel)..."
sudo pacman -S --needed --noconfirm git base-devel reflector

echo "-> [Bootstrap] Filter best Romania https mirrors with reflector"
sudo reflector --country Romania --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

echo "-> [Bootstrap] Updating full system with new mirrors..."
sudo pacman -Syu --noconfirm
