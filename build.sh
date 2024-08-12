#!/bin/sh -ex
VERSION=v1.67.0

# We specify netcgo tag because it is required if we want to use nscd
git clone https://github.com/rclone/rclone.git
(
    cd rclone &&
    git checkout $VERSION &&
    make GOTAGS=netcgo
)
mv rclone rclone.src
mv rclone.src/rclone .
rm -rf rclone.src
