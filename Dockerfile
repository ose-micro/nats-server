FROM nats:2.10-alpine

# Install envsubst
RUN apk add --no-cache gettext

# Copy template config
COPY nats.conf.tmpl /etc/nats/nats.conf.tmpl

EXPOSE 4222 8222

# At runtime, substitute env vars and start NATS
CMD sh -c "envsubst < /etc/nats/nats.conf.tmpl > /etc/nats/nats.conf && exec nats-server -c /etc/nats/nats.conf"
