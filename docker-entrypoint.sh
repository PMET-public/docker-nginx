#!/usr/bin/env bash

# stop on errors
set -e
# turn on debugging
set -x

# b/c outgoing DNS queries may be blocked, use container's resolver provided by docker
sed -n 's/nameserver\(.*\)/resolver\1;/p' /etc/resolv.conf | head -1 > /etc/nginx/resolver.conf 

exec /usr/sbin/nginx -g "daemon off;"
