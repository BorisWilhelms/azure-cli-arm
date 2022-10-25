#! /bin/sh

docker buildx build \
    --platform=linux/arm64,linux/arm/v7 \
    -t ghcr.io/boriswilhelms/azure-cli-arm:latest \
    --push \
    .