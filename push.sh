#! /bin/sh

echo "$CR_PAT" | docker login ghcr.io -u USERNAME --password-stdin
docker push ghcr.io/boriswilhelms/azure-cli-armv7:latest