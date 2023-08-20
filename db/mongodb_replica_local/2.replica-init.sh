#!/bin/sh

## RUN FILE AFTER STARTING DOCKER CONTAINER ( Wait for all 3 containers to run successfully)

echo "Running initialization script..."

# Execute your MongoDB setup command
docker exec -it mongo.one.db mongosh --eval "rs.initiate({_id:'dbrs', members: [{_id:0, host: 'mongo.one.db'},{_id:1, host: 'mongo.two.db'},{_id:2, host: 'mongo.three.db'}]})"

echo "Initialization script completed."
