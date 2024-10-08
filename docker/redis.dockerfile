FROM redis:7.4.1-alpine

COPY docker/entrypoint.sh /rhen-entrypoint.sh

ENTRYPOINT [ "/rhen-entrypoint.sh", "docker-entrypoint.sh" ]
CMD [ "redis-server" ]