#!/bin/bash

cp /var/lib/waydroid/lxc/waydroid/config_nodes /var/lib/waydroid/lxc/waydroid/config_nodes.bak
sed -i '/video/d' /var/lib/waydroid/lxc/waydroid/config_nodes
