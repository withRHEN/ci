FROM minio/minio:latest

COPY docker/entrypoint.sh /rhen-entrypoint.sh

ENTRYPOINT [ "/rhen-entrypoint.sh", "/usr/bin/docker-entrypoint.sh" ]
CMD [ "minio" ]