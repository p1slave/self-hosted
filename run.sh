# docker network create external-self-hosted-net
docker-compose -p self-hosted -f listmonk/docker-compose.yml -f caddy/docker-compose.yml -f mailu/docker-compose.yml -f archivebox/docker-compose.yml --env-file .env up -d
# docker-compose -p self-hosted -f listmonk/docker-compose.yml -f caddy/docker-compose.yml stop