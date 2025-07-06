FROM alpine:latest
RUN apk update --no-cache && apk add --no-cache dnsmasq
ENTRYPOINT ["/usr/sbin/dnsmasq", "--keep-in-foreground", "--log-facility=-"]
