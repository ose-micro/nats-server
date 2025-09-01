#!/bin/sh
set -e

# Expand env vars
envsubst < /etc/nats/nats.conf.tmpl > /etc/nats/nats.conf

# Ensure JetStream data directory exists
mkdir -p /data/jetstream
chown -R nats:nats /data/jetstream

# Run NATS as the nats user
exec nats-server -c /etc/nats/nats.conf
