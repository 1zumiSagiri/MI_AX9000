#!/bin/sh

chroot /mnt

cat /proc/mtd

nanddump -f /tmp/bdata_mtd18.img /dev/mtd18