ARG ARCH=arm32v7/

FROM ${ARCH}python:3.10-alpine

RUN apk add --no-cache bash openssh ca-certificates jq curl bind-tools openssl perl git zip  \
 && apk add --no-cache --virtual .build-deps gcc make openssl-dev libffi-dev musl-dev linux-headers \ 
 && apk add --no-cache libintl icu-libs libc6-compat \
 && update-ca-certificates \ 
 && pip install -U azure-cli \
 && apk del .build-deps
