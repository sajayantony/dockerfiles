FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get install sudo
# Install az-cli
COPY ./install.sh /install.sh
RUN /install.sh

# Install Helm
ENV VERSION v2.9.0
ENV FILENAME helm-${VERSION}-linux-amd64.tar.gz
ENV HELM_URL https://storage.googleapis.com/kubernetes-helm/${FILENAME}

RUN curl -L ${HELM_URL} | tar xz && mv linux-amd64/helm /bin/helm && rm -rf linux-amd64 


# Install Kubectl
RUN az aks install-cli 

USER jenkins
