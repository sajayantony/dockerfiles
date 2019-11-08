FROM alpine:3.10.3
ENV VERSION helm-v3.0.0-rc.3 

MAINTAINER  Sajay Antony <sajaya@microsoft.com>

RUN apk add --no-cache curl

RUN curl -LO https://get.helm.sh/${VERSION}-linux-amd64.tar.gz && \
    tar -xvf helm-v3.0.0-rc.3-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin 


RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.1/bin/linux/amd64/kubectl
RUN chmod u+x kubectl && \
    mv kubectl /usr/local/bin && \
    kubectl version --client

CMD ["helm"]