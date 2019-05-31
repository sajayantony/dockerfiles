FROM busybox
RUN wget http://dl-cdn.alpinelinux.org/alpine/v3.9/releases/x86_64/alpine-minirootfs-3.9.4-x86_64.tar.gz
RUN mkdir /rootfs && tar -xf alpine-minirootfs-3.9.4-x86_64.tar.gz -C /rootfs

FROM scratch
COPY --from=0 /rootfs /
CMD ["/bin/sh"]
