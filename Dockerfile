FROM alpine:3.22

ARG APK_NAME
ARG APK_VERSION

RUN apk update --no-cache && \
    apk add --no-cache ${APK_NAME}=${APK_VERSION}

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
