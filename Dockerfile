FROM alpine:3.22.0
ARG VERSION=2.91-r0
RUN apk update --no-cache && apk add --no-cache dnsmasq=${VERSION}
ENTRYPOINT ["/usr/sbin/dnsmasq", "--keep-in-foreground", "--log-facility=-"]
