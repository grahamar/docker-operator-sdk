FROM alpine:3.6

ENV VERSION=v0.8.1

ADD https://github.com/operator-framework/operator-sdk/releases/download/$VERSION/operator-sdk-$VERSION-x86_64-linux-gnu /usr/bin/operator-sdk

RUN chmod +x /usr/bin/operator-sdk && \
    apk add --update alpine-sdk docker
