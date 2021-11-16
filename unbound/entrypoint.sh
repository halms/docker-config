#!/bin/sh
set -e

if [ $# -eq 0 ]; then
  /usr/sbin/unbound-anchor -a /etc/unbound/root.key
  wget -O /etc/unbound/named.root http://www.internic.net/domain/named.root
  exec /usr/sbin/unbound -c /etc/unbound/unbound.conf -d -v
fi

exec "$@"
