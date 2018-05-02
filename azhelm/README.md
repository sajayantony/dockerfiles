# Kubectl+Helm for AzureCLI

The container provides a base container which can be used to run helm and kubectl on an AKS cluster. 

## Credentials
The container runs as `appuser` which is non-root and hence the azure configurations details should be mounted as follows 

```bash 
docker run --rm -it -v ~/.azure:/home/appuser/.azure azhelm
```

For e.g 

```
docker run --rm -it -v ~/.azure:/home/appuser/.azure azhelm \
	az aks get-credentials -n autobuild -g sajayak8s && \
       	helm ls
```
