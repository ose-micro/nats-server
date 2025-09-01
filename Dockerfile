FROM nats:latest

# Runtime environment variables (can be overridden in Railway/Compose)
ENV NATS_USER=nats
ENV NATS_PASS=supersecret

# Copy config file into container
COPY nats.conf /etc/nats/nats.conf

# Expose ports
EXPOSE 4222 8222

# Run nats-server with config
CMD ["nats-server", "-c", "/etc/nats/nats.conf"]
