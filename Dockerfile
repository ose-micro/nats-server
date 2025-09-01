FROM nats:2.10-alpine

ARG NATS_USER=nats
ARG NATS_PASS=supersecret

# Copy config file
COPY nats.conf /etc/nats/nats.conf

# Expose ports
EXPOSE 4222 8222

# Run nats-server with config
CMD ["nats-server", "-c", "/etc/nats/nats.conf"]
