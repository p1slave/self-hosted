## Listmonk installation
* Create a `.env` file and copy the variables from vault
```bash
CADDY_CLOUDFLARE_ZONE_DNS_API_TOKEN=token
CADDY_LISTMONK_DOMAIN_URL=listmonk.yoursite.com
POSTGRES_PASSWORD=password
POSTGRES_USER=yourname
LISTMONK_app__admin_username=yourname
LISTMONK_app__admin_password=password
ZOHO_APP_PASSWORD=password
```
* Run the Postgres DB for the first time
```bash
docker-compose up db
```
* Run the following command for initialization to set up the DB before starting containers or  
```bash
# (or --upgrade to upgrade an existing DB).
docker-compose run --rm app ./listmonk --install 
```
* Run the containers with environmental variables loaded from `.env`
```bash
# Without caddy as reverse proxy: docker-compose up -d app db
docker-compose --env-file .env up
```