FROM alpine:3

RUN apk --no-cache add \
    ca-certificates \
    unbound

RUN setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/unbound

VOLUME /etc/unbound

EXPOSE 53/udp 53/tcp

CMD /usr/sbin/unbound-anchor -a /etc/unbound/root.key && /usr/sbin/unbound -c /etc/unbound/unbound.conf -d -v
