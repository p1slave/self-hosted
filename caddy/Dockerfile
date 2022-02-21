FROM caddy:2.4.6-builder AS builder

RUN xcaddy build v2.4.6 --with github.com/caddy-dns/cloudflare@latest

FROM caddy:2.4.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy