FROM alpine:edge

RUN apk --no-cache add \
    unbound

VOLUME /etc/unbound

EXPOSE 53/udp 53/tcp

ENTRYPOINT [ "/usr/sbin/unbound", "-c", "/etc/unbound/unbound.conf", "-d", "-v" ]
