# Ted

## Run a postgresql database

```bash
docker run \
--rm -it \
-p 4444:5432 \
--volume postgres-data:/var/lib/postgresql/data \
-v "$PWD/my-postgres.conf":/etc/postgresql/postgresql.conf \
-v "$PWD/pg_hba.conf:/var/lib/postgresql/data/pg_hba.conf" \
--name postgres \
-e POSTGRES_USER=thedbuser \
-e POSTGRES_DB=thedbitself \
-e POSTGRES_PASSWORD=thedbpassword \
postgres:latest \
 -c 'config_file=/etc/postgresql/postgresql.conf'
```
