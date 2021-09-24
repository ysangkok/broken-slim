#!/usr/bin/env bash
set -euo pipefail
export DOCKER_VER=20.10.8

# install docker for CI builds
curl -L -o /tmp/docker-$DOCKER_VER.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VER.tgz
tar -xz -C /tmp -f /tmp/docker-$DOCKER_VER.tgz
mv /tmp/docker/* /usr/bin

docker run debian:bullseye sh -c "apt-get update && apt-get install -y libpaper1"
