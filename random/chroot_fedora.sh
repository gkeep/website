#/bin/bash

mount -t btrfs -o subvol=root /dev/sda3 /mnt
mount -t btrfs -o subvol=home /dev/sda3 /mnt/home
mount /dev/sda2 /mnt/boot
mount /dev/sda1 /mnt/boot/efi

for dir in /dev /proc /sys /run; do mount --bind $dir /mnt/$dir; done
mount -t efivarfs /sys/firmware/efi/efivars /mnt/sys/firmware/efi/efivars

chroot /mnt
