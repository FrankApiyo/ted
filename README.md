## Edgar "Ted" F. Codd

[![Ted](./Codd.png)](https://en.wikipedia.org/wiki/Edgar_F._Codd)


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

*note:* stuff you see here is lots inspired by
- https://medium.com/pragmatic-programmers/use-hugsql-c3cf85e53678
- Codd image copied from here: https://www.dataversity.net/myth-1-normalization-friend-foe-or-frenemy-the-survey/codd/