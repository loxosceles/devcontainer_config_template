FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

WORKDIR /workspaces

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
  && apt-get -y install --no-install-recommends \
  vim git libzip-dev unzip software-properties-common pip pylint ranger

RUN pip install ipython

COPY ./chezmoi.toml /home/vscode/.config/chezmoi/chezmoi.toml 
RUN chown -R vscode:vscode /home/vscode/.config

COPY ./post_create.sh /home/vscode/post_create.sh
RUN chown -R vscode:vscode /home/vscode/post_create.sh
