FROM nats:latest

# Expose NATS and monitoring ports
EXPOSE 4222 8222

# Copy configuration
COPY nats.conf /etc/nats/nats.conf

CMD ["-c", "/etc/nats/nats.conf"]
