FROM cockroachdb/cockroach:v23.1.13

LABEL org.opencontainers.image.source=https://github.com/withRHEN/ci
LABEL org.opencontainers.image.description="Cockroach for RHEN"

CMD [ "start-single-node", "--insecure" ]