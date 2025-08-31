FROM nats:2.10-alpine

ENV NATS_USER=nats
ENV NATS_PASS=supersecret

# Copy config file into container
COPY nats.conf /etc/nats/nats.conf

# Expose ports
EXPOSE 4222 8222

# Run nats-server with config
CMD ["-c", "/etc/nats/nats.conf"]
