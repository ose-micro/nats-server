FROM nats:2.10

ENV NATS_USER=nats
ENV NATS_PASS=supersecret

COPY nats.conf /etc/nats/nats.conf

EXPOSE 4222 8222

CMD ["-c", "/etc/nats/nats.conf"]
