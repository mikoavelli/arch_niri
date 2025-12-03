#!/usr/bin/env bash
set -e

echo "-> [Secure Boot] Setup with sbctl"
sudo sbctl create-keys
sudo sbctl sign /boot/vmlinuz-linux
sudo sbctl sign /boot/EFI/systemd/systemd-bootx64.efi
sudo sbctl sign /boot/EFI/BOOT/BOOTX64.EFI
sudo sbctl verify
sudo sbctl enroll-keys
