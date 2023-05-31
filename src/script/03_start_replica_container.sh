#!/bin/bash
echo "Avvio i container replica"
sudo docker run -d --rm -p 27018:27017 --name mongo2 --network mongoCluster mongo:5 mongod --replSet myReplicaSet --bind_ip localhost,mongo2
sudo docker run -d --rm -p 27019:27017 --name mongo3 --network mongoCluster mongo:5 mongod --replSet myReplicaSet --bind_ip localhost,mongo3
