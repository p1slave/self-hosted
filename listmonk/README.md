## Listmonk installation

* Run the Postgres DB.
```bash
docker-compose up db
```
* Run the following command for initialization to set up the DB before starting containers 
```bash
# (or --upgrade to upgrade an existing DB).
docker-compose run --rm app ./listmonk --install 
```
* Run the containers
```bash
docker-compose up -d app db
```