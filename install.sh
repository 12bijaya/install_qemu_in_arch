#!/usr/bin/bash
sudo pacman -Syy
sudo pacman -Syyu
sudo pacman -S qemu-emulators-full virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libvirt
sudo systemctl start --now libvirtd
sudo usermod -aG libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd
sudo virsh net-start default
sudo virsh net-autostart default
sudo virsh net-list --all
