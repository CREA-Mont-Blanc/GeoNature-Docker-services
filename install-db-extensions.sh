#!/usr/bin/env bash

POSTGRES_PLUGINS="uuid-ossp postgis postgis_raster pg_trgm unaccent hstore"
 
for plugin in $POSTGRES_PLUGINS
do
  echo installing $plugin ...
  PGPASSWORD=${POSTGRES_PASSWORD} psql --host=${POSTGRES_HOST} --port=${POSTGRES_PORT} --username=${POSTGRES_USER} --dbname=${POSTGRES_DB} --command="CREATE EXTENSION IF NOT EXISTS \"$plugin\" CASCADE;"
done
