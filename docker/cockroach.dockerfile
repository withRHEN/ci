FROM cockroachdb/cockroach:v24.2.5

COPY docker/entrypoint.sh /rhen-entrypoint.sh

ENTRYPOINT [ "/rhen-entrypoint.sh", "/cockroach/cockroach.sh" ]