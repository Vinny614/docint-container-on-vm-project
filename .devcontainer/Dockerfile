# Use the official Codespaces base image
FROM mcr.microsoft.com/vscode/devcontainers/base:0-focal

# Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com focal main" \
    && apt-get update \
    && apt-get install -y terraform

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install Docker CLI
RUN apt-get update \
    && apt-get install -y apt-transport-https ca-certificates curl software-properties-common \
    && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" \
    && apt-get update \
    && apt-get install -y docker-ce-cli

# Install Node.js (uncomment if you choose Node.js)
# RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - \
#     && apt-get install -y nodejs

# Install Python (uncomment if you choose Python)
 RUN apt-get update \
     && apt-get install -y python3 python3-pip
