
Build the CIFS base image.

```
az acr build -t cifs .
```

Build the cifs:test images based of the CIFS image
```
az acr build -t cifs:test --build-arg REGISTRY=myregistry.azurecr.io -f Dockerfile.test .
```

Run the mount test

```bash 
az acr run \
    --set MOUNT_SHARE=$MOUNT_SHARE \
    --set MOUNT_POINT=/mnt/test \
    --set  MOUNT_OPTIONS=$MOUNT_OPTIONS .
```