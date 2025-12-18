#!/usr/bin/env bash
set -e

echo "-> [System] Changing default ttl for free mobile hotspot"
sudo mkdir -p /etc/sysctl.d/
echo "net.ipv4.ip_default_ttl = 65" | sudo tee /etc/sysctl.d/99-ttl-mobile-hotspot.conf

echo "-> [System] Turn off suspend on power key press"
sudo mkdir -p /etc/systemd/logind.conf.d
echo -e "[Login]\nHandlePowerKey=ignore" | sudo tee /etc/systemd/logind.conf.d/99-power-key.conf

echo "-> [System] Hiding systemd-boot menu"
echo "timeout 0" | sudo tee /boot/loader/loader.conf

echo "-> [System] Disabling motherboard speaker beep"
echo "blacklist pcspkr" | sudo tee /etc/modprobe.d/nobeep.conf

echo "-> [System/Security] Making basic ufw changes"
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

echo "-> [System] Enabling necessary services"
sudo systemctl enable ly@tty1.service
sudo systemctl enable bluetooth.service
sudo systemctl enable power-profiles-daemon.service
sudo systemctl enable ufw.service

echo "-> [System] Disabling unused services"
sudo systemctl disable remote-fs.target avahi-daemon.service || true
sudo systemctl mask remote-fs.target avahi-daemon.service || true
