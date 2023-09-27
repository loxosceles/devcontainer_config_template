# [Choice] Ubuntu version (use jammy on local arm64/Apple Silicon): jammy, focal
ARG VARIANT="jammy"
FROM buildpack-deps:${VARIANT}-curl

LABEL dev.containers.features="common"

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends git pip libzip-dev unzip software-properties-common ranger

RUN pip install ipython

COPY post_create.sh /usr/src
RUN chmod +x /usr/src/post_create.sh

