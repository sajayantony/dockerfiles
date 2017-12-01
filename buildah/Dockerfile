FROM fedora:25

RUN dnf -y install \
    make \
    golang \
    bats \
    btrfs-progs-devel \
    device-mapper-devel \
    glib2-devel \
    gpgme-devel \
    libassuan-devel \
    ostree-devel \
    git \
    bzip2 \
    go-md2man \
    runc \
    skopeo-containers


RUN mkdir -p /buildah/src/github.com/projectatomic
ENV GOPATH /buildah 
WORKDIR /buildah/src/github.com/projectatomic
RUN git clone https://github.com/projectatomic/buildah

WORKDIR $GOPATH/src/github.com/projectatomic/buildah
RUN cd $GOPATH/src/github.com/projectatomic/buildah && \
    make && make install && \
    mv buildah /usr/bin/ 

CMD ["buildah"]

