FROM nats:2.10-alpine

ENV NATS_USER=nats
ENV NATS_USER=supersecret

# Install envsubst
RUN apk add --no-cache gettext

COPY nats.conf.tmpl /etc/nats/nats.conf.tmpl

EXPOSE 4222 8222

CMD sh -c "envsubst < /etc/nats/nats.conf.tmpl > /etc/nats/nats.conf && nats-server -c /etc/nats/nats.conf"
