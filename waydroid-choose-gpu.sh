#!/bin/bash

echo "First select a gpu to pass to waydroid"
echo "Listing GPUs now"
echo ""

lspci | grep ' VGA '

echo ""
echo "Put pci ID of your GPU in"
read gpuchoice

echo ""
echo "confirm that these belong to your GPU."
echo ""

#lspci | grep ' VGA ' | cut -d" " -f 1 | grep -i $gpuchoice

ls -l /dev/dri/by-path/ | grep -i $gpuchoice

echo ""

card=$(ls -l /dev/dri/by-path/ | grep -i $gpuchoice | grep -o "card[0-9]")
rendernode=$(ls -l /dev/dri/by-path/ | grep -i $gpuchoice | grep -o "renderD[1-9][1-9][1-9]")

echo /dev/dri/$card
echo /dev/dri/$rendernode

cp /var/lib/waydroid/lxc/waydroid/config_nodes /var/lib/waydroid/lxc/waydroid/config_nodes.bak
#lxc.mount.entry = /dev/dri dev/dri none bind,create=dir,optional 0 0
sed -i '/dri/d' /var/lib/waydroid/lxc/waydroid/config_nodes
echo "lxc.mount.entry = /dev/dri/$card dev/dri/card0 none bind,create=file,optional 0 0" >> /var/lib/waydroid/lxc/waydroid/config_nodes
echo "lxc.mount.entry = /dev/dri/$rendernode dev/dri/renderD128 none bind,create=file,optional 0 0" >> /var/lib/waydroid/lxc/waydroid/config_nodes


