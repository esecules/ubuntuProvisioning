#! /bin/bash
#Run as root!

apt-get update
apt-get upgrade
apt-get install -y powertop pm-utils laptop-mode-utils emacs vim

cp 20_example_hook /etc/pm/power.d/
cp 10-laptop-mode-tools /etc/pm/sleep.d/

pm-powersave true
powertop --auto-tune

cp 20-intel.conf /usr/share/X11/xorg.conf/

cp --no-clobber /etc/default/grub /etc/default/grub.save 
sed -i -e 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash pcie_aspm=force acpi_osi="
/g' /etc/default/grub

