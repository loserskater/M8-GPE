#!/sbin/sh

# Restoring The EFS and NVdata
/sbin/busybox dd if=/data/media/0/EFS_NV_BACKUP/p11_efs.img of=/dev/block/mmcblk0p11
/sbin/busybox dd if=/data/media/0/EFS_NV_BACKUP/p12_modemst1.img of=/dev/block/mmcblk0p12;
/sbin/busybox dd if=/data/media/0/EFS_NV_BACKUP/p13_modemst2.img of=/dev/block/mmcblk0p13;
/sbin/busybox dd if=/data/media/0/EFS_NV_BACKUP/p20_backup.img of=/dev/block/mmcblk0p20;
/sbin/busybox dd if=/data/media/0/EFS_NV_BACKUP/p21_fsg.img of=/dev/block/mmcblk0p21;

exit 10