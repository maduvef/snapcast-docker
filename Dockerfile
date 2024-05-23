FROM alpine:3.20.0

ARG VERSION=v0.28.0

RUN addgroup -S snapcast && adduser -S snapcast -G snapcast && \
    apk add --no-cache snapcast-server

EXPOSE 1704
EXPOSE 1780

USER snapcast
COPY snapserver.conf /etc/snapserver.conf
CMD snapserver
