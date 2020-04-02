#!/bin/bash

[ -d root ] || {
    echo "root dir not found" >&2
    exit 1
}

docker build -f Dockerfile.init -t multiarch-openwrt-init . 
docker build -t openwrt . 
