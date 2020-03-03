FROM alpine:3.9

MAINTAINER Mark Grimes

ARG KUBE_VERSION="1.17.3"

RUN apk add --update \
        ca-certificates \
        curl \
        gettext \
        git \
    && curl -L \
        https://storage.googleapis.com/kubernetes-release/release/v$KUBE_VERSION/bin/linux/amd64/kubectl \
        -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && rm /var/cache/apk/*

    # && apk add --update -t deps \
    #   curl \
    # && apk del --purge deps \
