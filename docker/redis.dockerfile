FROM redis:7.2.5-alpine

COPY docker/entrypoint.sh /rhen-entrypoint.sh

ENTRYPOINT [ "/rhen-entrypoint.sh", "docker-entrypoint.sh" ]
CMD [ "redis-server" ]