# Building an OCI Image using Build Kit

For building an OCI image we use [buildkit](https://github.com/moby/buildkit) which will be run in a daemon. 

```sh
docker build -t buildctl -f ./hack/dockerfiles/test.Dockerfile https://github.com/moby/buildkit.git
```

## Build and push an OCI image 
```
buildctl build --frontend=dockerfile.v0 --local context=. --local dockerfile=. --exporter=image --exporter-opt name=$REGISTRY/testoci:1 --exporter-opt oci-mediatypes=true --exporter-opt push=true
```
