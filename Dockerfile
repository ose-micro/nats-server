FROM nats:latest

# Install envsubst
USER root
RUN apt-get update && apt-get install -y gettext-base && rm -rf /var/lib/apt/lists/*

# Copy config template
COPY nats.conf.tmpl /etc/nats/nats.conf.tmpl

# Expose ports
EXPOSE 4222 8222

# At runtime, substitute env vars → generate real config → run nats-server
CMD ["/bin/sh", "-c", "envsubst < /etc/nats/nats.conf.tmpl > /etc/nats/nats.conf && exec nats-server -c /etc/nats/nats.conf"]
