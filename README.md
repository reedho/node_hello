# simple-node-app

This is simple-node-app, the playground i use to explore the web development.

Watch as this simple application grow from the very basic to become more and more interesting.

## TLDR;

```bash
# build docker
docker build -t reedho/simple-node-app:1-0-0 .

# push
docker push reedho/simple-node-app:1-0-0

# start pg
docker run -d --name pg -e POSTGRES_USER=user -e POSTGRES_HOST_AUTH_METHOD=trust -p 5432:5432 postgres

# call pg_dump
docker exec pg pg_dump -U user -h localhost --create --no-owner simple_node_app > simple_node_app.sql

# restore pg
docker exec pg psql -U user -h localhost < simple_node_app.sql

# running image
docker run --rm --name simple_node_app --add-host=host.docker.internal:host-gateway reedho/simple-node-app:1-1-0
```


## Change logs

- `1-0-0`
  - Initial, the very basic node web server.

- `1-1-0`
  - Use simple pg connection pool
  - Graceful shutdown
