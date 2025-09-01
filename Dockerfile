FROM nats:2.10

COPY nats.conf /etc/nats/nats.conf

EXPOSE 4222 8222

CMD ["-c", "/etc/nats/nats.conf"]
