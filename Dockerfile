FROM alpine:3.8

MAINTAINER Rafael Souza <rsouza19796@gmail.com>

RUN apk add --update dhcp && touch /var/lib/dhcp/dhcpd.leases
COPY root /
RUN chmod +x /start.sh

EXPOSE 67
EXPOSE 67/udp
EXPOSE 547
EXPOSE 547/udp
EXPOSE 647
EXPOSE 647/udp
EXPOSE 847
EXPOSE 847/udp

ENTRYPOINT ["/start.sh"]
CMD ["-f", "-cf", "/etc/dhcpd.conf", "-lf", "/var/lib/dhcp/dhcpd.leases", "--no-pid"]
