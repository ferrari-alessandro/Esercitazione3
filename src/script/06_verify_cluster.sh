#!/bin/bash
echo "Verifico lo stato"
sudo docker exec -it mongo1 mongosh --eval “rs.status()”
