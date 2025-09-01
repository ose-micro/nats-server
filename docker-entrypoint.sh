#!/bin/sh
set -e

# Substitute environment variables into config
envsubst < /etc/nats/nats.conf.tmpl > /etc/nats/nats.conf

exec "$@"
