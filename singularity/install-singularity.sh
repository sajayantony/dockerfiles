export VERSION=3.0.3 && # adjust this as necessary \

mkdir -p $GOPATH/src/github.com/sylabs 
cd $GOPATH/src/github.com/sylabs 
wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz
tar -xzf singularity-${VERSION}.tar.gz 
cd ./singularity
./mconfig

make -C ./builddir
make -C ./builddir install