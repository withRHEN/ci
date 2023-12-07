FROM rust:1.74.0-alpine3.18 as builder

LABEL org.opencontainers.image.source=https://github.com/withRHEN/ci
LABEL org.opencontainers.image.description="Migrator for RHEN"

RUN apk add --no-cache musl-dev openssl-dev perl make && \
    cargo install --git https://github.com/launchbadge/sqlx sqlx-cli --features openssl-vendored

FROM alpine:3.18.5

COPY --from=builder /usr/local/cargo/bin/sqlx /usr/local/bin/sqlx

ENTRYPOINT ["sh"]