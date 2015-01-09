#!/sbin/sh

mount /dev/block/mmcblk0p14 /system
mount /dev/block/mmcblk0p15 /data
mount /dev/block/mmcblk0p11 /efs
mount /dev/block/mmcblk0p12 /modemst1
mount /dev/block/mmcblk0p13 /modemst2
mount /dev/block/mmcblk0p20 /backup
mount /dev/block/mmcblk0p21 /fsg

# Creating Directories For EFS Backup Files

if [ ! -d /data/media/0/EFS_NV_BACKUP ];then
  mkdir /data/media/0/EFS_NV_BACKUP
  chmod 777 /data/media/0/EFS_NV_BACKUP
fi

# Backing Up The EFS NVdata
/sbin/busybox dd if=/dev/block/mmcblk0p11 of=/data/media/0/EFS_NV_BACKUP/p11_efs.img
/sbin/busybox dd if=/dev/block/mmcblk0p12 of=/data/media/0/EFS_NV_BACKUP/p12_modemst1.img;
/sbin/busybox dd if=/dev/block/mmcblk0p13 of=/data/media/0/EFS_NV_BACKUP/p13_modemst2.img;
/sbin/busybox dd if=/dev/block/mmcblk0p20 of=/data/media/0/EFS_NV_BACKUP/p20_backup.img;
/sbin/busybox dd if=/dev/block/mmcblk0p21 of=/data/media/0/EFS_NV_BACKUP/p21_fsg.img;

unmount /system
unmount /data
unmount /efs
unmount /modemst1
unmount /modemst2
unmount /backup
unmount /fsg

exit 10