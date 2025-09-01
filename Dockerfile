FROM nats:2.10

USER root

RUN apk add --no-cache gettext

COPY nats.conf.tmpl /etc/nats/nats.conf.tmpl
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["nats-server", "-c", "/etc/nats/nats.conf"]
