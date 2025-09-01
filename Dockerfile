FROM nats:latest

# Expose NATS and monitoring ports
EXPOSE 4222 8222

ENV NATS_USER=nats
ENV NATS_PASS=supersecret

# Copy configuration
COPY nats.conf /etc/nats/nats.conf

CMD ["-c", "/etc/nats/nats.conf", "--user", "${NATS_USER}", "--pass", "${NATS_PASS}"]
