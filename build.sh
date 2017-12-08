#!/bin/bash

# docker build --pull -t dvim --build-arg UID=$(id -u) --build-arg GID=$(id -g) .
docker build --pull -t vim-ycm-docker image
