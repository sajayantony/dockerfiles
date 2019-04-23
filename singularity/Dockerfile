FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
    build-essential \
	libssl-dev \
	uuid-dev \
	libgpgme11-dev \
	squashfs-tools \
	libseccomp-dev \
	pkg-config \
	wget \
	git

COPY . /install/
RUN /install/install-go.sh
ENV PATH="${PATH}:/usr/local/go/bin"
ENV GOPATH="/go"
RUN /install/install-singularity.sh

# ref https://www.sylabs.io/guides/3.0/user-guide/appendix.html#build-debootstrap
RUN apt-get install debootstrap
