FROM nats:2.10.20-alpine

RUN apk add --no-cache bash

COPY docker/entrypoint.sh /rhen-entrypoint.sh

ENTRYPOINT [ "/rhen-entrypoint.sh", "docker-entrypoint.sh" ]
CMD [ "nats-server", "--config", "/etc/nats/nats-server.conf" ]