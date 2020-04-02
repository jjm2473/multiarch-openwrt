#!/bin/bash

# docker run -e QEMU_BIN_DIR="/rom/bin" --rm --privileged multiarch/qemu-user-static:register
# docker create --name qemu-user-static -v /rom --entrypoint /bin/sh multiarch/qemu-user-static -c "cp -a /usr/bin /rom" && docker start qemu-user-static
# docker run -it --rm --volumes-from qemu-user-static openwrt 
# docker run --rm --privileged multiarch/qemu-user-static:register
docker create --name multiarch-openwrt-init --privileged -v /rom multiarch-openwrt-init && docker wait `docker start multiarch-openwrt-init`
docker run -it --rm -p 11080:80 -p 11022:22 --volumes-from multiarch-openwrt-init --tmpfs /tmp -v /etc/resolv.conf:/tmp/resolv.conf:ro openwrt