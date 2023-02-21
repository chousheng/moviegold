#!/usr/bin/env sh

# Read .env
set -o allexport
. ../.env
set +o allexport

# Seed the database
mongoimport --uri mongodb://$MONGO_USER:$MONGO_PASSWORD@$MONGO_CLUSTER --authenticationDatabase admin --db $MONGO_DATABASE --collection movies --file=movies.json --jsonArray --drop
