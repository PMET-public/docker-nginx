#!/bin/sh

sed -n 's/nameserver\(.*\)/resolver\1;/p' /etc/resolv.conf | head -1 > /etc/nginx/conf.d/resolver.conf

/usr/sbin/nginx -g "daemon off;"
