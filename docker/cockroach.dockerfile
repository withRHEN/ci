FROM cockroachdb/cockroach:v23.1.14

COPY docker/entrypoint.sh /rhen-entrypoint.sh

ENTRYPOINT [ "/rhen-entrypoint.sh", "/cockroach/cockroach.sh" ]