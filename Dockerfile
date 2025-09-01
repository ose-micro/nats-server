FROM nats:latest

# Expose NATS and monitoring ports
EXPOSE 4222 8222

# Copy configuration
COPY nats.conf /etc/nats/nats.conf

# Use ENTRYPOINT to read env vars at runtime
ENTRYPOINT ["sh", "-c", "nats-server -c /etc/nats/nats.conf --user $NATS_USER --pass $NATS_PASS"]
