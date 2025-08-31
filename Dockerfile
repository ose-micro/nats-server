FROM nats:2.10-alpine

# Copy config file into container
COPY nats.conf /etc/nats/nats.conf

# Run nats-server with config
CMD ["-c", "/etc/nats/nats.conf"]
