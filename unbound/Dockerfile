FROM alpine:3

RUN apk --no-cache add \
    ca-certificates \
    libcap \
    unbound

RUN setcap CAP_NET_BIND_SERVICE=+eip /usr/sbin/unbound

COPY --chmod 0755 ./etnrypoint.sh /entrypoint.sh

VOLUME /etc/unbound
EXPOSE 53/udp 53/tcp

ENTRYPOINT ['/entrypoint.sh']
