FROM cockroachdb/cockroach:v24.1.2

COPY docker/entrypoint.sh /rhen-entrypoint.sh

ENTRYPOINT [ "/rhen-entrypoint.sh", "/cockroach/cockroach.sh" ]