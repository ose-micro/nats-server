FROM nats:2.10-alpine

RUN apk add --no-cache gettext

COPY nats.conf.tmpl /etc/nats/nats.conf.tmpl
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 4222 8222

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
CMD ["nats-server", "-c", "/etc/nats/nats.conf"]
