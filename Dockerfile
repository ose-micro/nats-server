FROM nats:latest

ENV NATS_USER=myuser
ENV NATS_PASS=mypassword
ENV NATS_STORE_DIR=/data

EXPOSE 4222 8222 6222

CMD ["-js", "-m", "8222", "--store_dir", "/data", "--user", "${NATS_USER}", "--pass", "${NATS_PASS}"]
