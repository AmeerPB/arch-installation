ping google.com

wifi-menu

timedatectl set-ntp true

lsblk

fdisk /dev/sda
    boot
    root

mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda2

mount /dev/sda2 /mnt
mkdir /mnt/boot

mount /dev/sda1 /mnt/boot

lsblk

pacstrap /mnt base base-devel linux linux-firmware vim

genfstab -U /mnt >> /mnt/etc/fstab


arch-chroot /mnt /bin/bash

pwd

pacman -S networkmanager grub

systemctl enable NetworkManager


grub-install /dev/sda


grub-mkconfig -o /boot/grub/grub.cfg


passwd

vim /etc/locale.gen
    en_US

locale-gen


vim /etc/locale.conf
    LANG=en-US.UTF-8

vim /etc/hostname

    archBox

ln -sf /usr/share/zoneinfo/Asia/CalCutta /etc/localtime


umount -R /mnt














