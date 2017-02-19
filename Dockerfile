FROM ubuntu:16.04

RUN apt-get -y update&&apt-get -y upgrade
RUN apt-get -y install aptitude
RUN aptitude -y install unbound
RUN mkdir -p /var/unbound/var/log && chown unbound:unbound /var/unbound/var/log

ENTRYPOINT ["unbound"]
CMD ["-d", "-c", "/conf/unbound.conf"]

EXPOSE 53/udp
