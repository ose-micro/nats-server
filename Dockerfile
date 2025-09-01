FROM nats:latest

# Expose NATS and monitoring ports
EXPOSE 4222 8222

# Copy JetStream config
COPY nats.conf /etc/nats/nats.conf

# Use exec form so NATS reads env vars directly
CMD ["nats-server", "-c", "/etc/nats/nats.conf", "--user", "${NATS_USER}", "--pass", "${NATS_PASS}"]
