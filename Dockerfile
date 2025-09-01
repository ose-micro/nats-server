FROM nats:latest

ARG NATS_USER=nats
ARG NATS_PASS=supersecret

# Expose NATS and monitoring ports
EXPOSE 4222 8222


# Copy configuration
COPY nats.conf /etc/nats/nats.conf

CMD ["-c", "/etc/nats/nats.conf", "--user", "${NATS_USER}", "--pass", "${NATS_PASS}"]
