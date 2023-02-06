#!/bin/sh

# Dont forget to login
docker build --build-arg TARGETPLATFORM=amd64 -t landing:latest . 

# docker tag landing:latest ghcr.io/toxics-space/landing:latest
# docker image push ghcr.io/toxics-space/landing:latest

docker tag ui:latest reg.toxics.space/ui:latest
docker image push reg.toxics.space/ui:latest
