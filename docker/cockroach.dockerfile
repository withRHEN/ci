FROM cockroachdb/cockroach:v23.2.1

COPY docker/entrypoint.sh /rhen-entrypoint.sh

ENTRYPOINT [ "/rhen-entrypoint.sh", "/cockroach/cockroach.sh" ]