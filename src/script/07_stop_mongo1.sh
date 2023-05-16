#!/bin/bash
echo "Verifico il container mongo2"
sudo docker exec -it mongo2 mongosh --eval "rs.status()“


