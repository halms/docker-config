#!/bin/sh

if [ $# -eq 0 ]; then
  /usr/sbin/unbound-anchor -a /etc/unbound/root.key
  wget -O /etc/unbound/named.root https://www.internic.net/domain/named.root
  exec /usr/sbin/unbound -c /etc/unbound/unbound.conf -d -v
fi

exec "$@"
