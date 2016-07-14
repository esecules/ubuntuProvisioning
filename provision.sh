#! /bin/bash
#Run as root!

apt-get install -y powertop pm-utils laptop-mode-utils emacs vim

cp 20_example_hook /etc/pm/power.d/
cp 10-laptop-mode-tools /etc/pm/sleep.d/

pm-powersave true

cp 20-intel.conf /usr/share/X11/xorg.conf/
