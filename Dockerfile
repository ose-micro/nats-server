FROM nats:latest

EXPOSE 4222 8222 6222

CMD nats-server -js -m 8222 --store_dir /data --user $NATS_USER --pass $NATS_PASS
