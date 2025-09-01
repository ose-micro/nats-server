# Use the official NATS image
FROM nats:latest

# Expose NATS ports
EXPOSE 4222 8222 6222

# ENTRYPOINT is already ["nats-server"] in the base image
# Here we set default args for local dev
CMD ["-js", "-m", "8222", "--store_dir", "/data", "--user", "myuser", "--pass", "mypassword"]
