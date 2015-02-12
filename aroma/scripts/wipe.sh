#!/sbin/sh
/sbin/busybox find /data/* -maxdepth 0 -type d ! -name 'media' | xargs rm -rf