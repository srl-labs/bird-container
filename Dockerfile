FROM alpine:3.18

RUN apk add --no-cache bird=2.13-r0 \
    tcpdump \
    iproute2


ENTRYPOINT ["/usr/sbin/bird", "-c", "/etc/bird.conf", "-d"]