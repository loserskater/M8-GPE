#!/system/bin/sh

ELEX_CONF="/system/etc/elementalx.conf"

#Set Permissive
if [ "`grep PERMISSIVE=1 $ELEX_CONF`" ]; then
  echo 0  > /sys/fs/selinux/enforce
fi
