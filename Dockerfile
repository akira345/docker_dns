FROM ubuntu:20.10

RUN apt-get -y update && apt-get -y install aptitude \
    && aptitude -y install unbound \
    && rm -r /var/lib/apt/lists/*
RUN mkdir -p /var/unbound/var/log \
    && chown unbound:unbound /var/unbound/var/log

ENTRYPOINT ["unbound"]
CMD ["-d", "-c", "/conf/unbound.conf"]

EXPOSE 53/udp
