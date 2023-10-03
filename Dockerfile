FROM jenkins/jenkins:latest

USER root

RUN apt-get update && apt-get install -y \
    curl unzip software-properties-common gnupg2 wget

RUN wget https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip \
    && unzip terraform_1.5.7_linux_amd64.zip -d /usr/local/bin/  \
    && rm terraform_1.5.7_linux_amd64.zip