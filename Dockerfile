# Use official NATS image
FROM nats:latest

# Environment variables (set in Railway dashboard)
ENV NATS_USER=myuser
ENV NATS_PASS=mypassword
ENV NATS_STORE_DIR=/data

# Expose ports (4222 client, 8222 monitoring, 6222 clustering)
EXPOSE 4222 8222 6222

# Start NATS with JetStream, monitoring, and authentication
CMD nats-server -js -m 8222 --store_dir ${NATS_STORE_DIR} --user ${NATS_USER} --pass ${NATS_PASS}
