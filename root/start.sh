#!/usr/bin/env sh

if [ ! -f /etc/dhcpd.conf ]; then
    echo "/etc/dhcpd.conf not found."
    exit 1
fi

exec /usr/sbin/dhcpd $@
