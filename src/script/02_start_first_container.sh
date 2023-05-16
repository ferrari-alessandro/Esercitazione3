#!/bin/bash
echo "Avvio il primo container"
sudo docker run -d --rm -p 27017:27017 --name mongo1 --network mongoCluster mongo:4.4.21 mongod --replSet myReplicaSet --bind_ip localhost,mongo1

