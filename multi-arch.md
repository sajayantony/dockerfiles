# Build and push multi-arch images 

```bash
export REGISTRY=myregistry.azurecr.io
docker build -t $REGISTRY/baseimages/alpine:3.9-amd64 -f ./alpine/Dockerfile.amd64 .
docker push $REGISTRY/baseimages/alpine:3.9-amd64 

docker build -t $REGISTRY/baseimages/alpine:3.9-armv7 -f ./alpine/Dockerfile.armv7 .
docker push $REGISTRY/baseimages/alpine:3.9-armv7 
docker manifest create $REGISTRY/baseimages/alpine:3.9 \
                $REGISTRY/baseimages/alpine:3.9-amd64 \
                $REGISTRY/baseimages/alpine:3.9-armv7

docker manifest push $REGISTRY/baseimages/alpine:3.9       
docker manifest inspect $REGISTRY/baseimages/alpine:3.9 
```