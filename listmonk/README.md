## Listmonk installation
* Create a `.env` file and copy the variables from vault
```bash
# Skip them if you are not using Caddy reverse proxy
CADDY_CLOUDFLARE_ZONE_DNS_API_TOKEN=token
CADDY_LISTMONK_DOMAIN_URL=listmonk.yoursite.com

# Keep the username as "listmonk" to avoid warnings
POSTGRES_USER=listmonk
POSTGRES_PASSWORD=password

LISTMONK_app__admin_username=yourname
LISTMONK_app__admin_password=password
```

* Remove all related containers and clean up volumes from previous installation
```bash
docker volume prune
```

* Run the Postgres DB for the first time
```bash
# Environmental variables `POSTGRES_USER` and `POSTGRES_PASSWORD` are required
docker-compose --env-file .env up postgre
```

* Run the following command for initialization to set up the DB before starting containers 
```bash
# (or --upgrade to upgrade an existing DB).
docker-compose run --rm listmonk ./listmonk --install 
```

* Run the containers with environmental variables loaded from `.env`
```bash
docker-compose --env-file .env up
```