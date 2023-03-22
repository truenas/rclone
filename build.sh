#!/bin/sh -ex
VERSION=v1.61.1
git clone https://github.com/rclone/rclone.git
(
    cd rclone &&
    git checkout $VERSION &&
    make GOTAGS=netcgo
)
mv rclone rclone.src
mv rclone.src/rclone .
rm -rf rclone.src
