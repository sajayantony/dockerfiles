#!/bin/sh
mkdir -p $MOUNT_POINT
mount -t cifs $MOUNT_SHARE $MOUNT_POINT -o $MOUNT_OPTIONS
tree $MOUNT_POINT
