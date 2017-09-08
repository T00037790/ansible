#!/bin/sh 

# First, we have to run apt-get update, then install a server for managing and downloading OpenPGP certificates, 
# ca-certificates and enable APT to access metadata and packages over HTTPS.
apt-get update
apt-get install -y apt-transport-https ca-certificates
apt-get install -y dirmngr

# Next, we can add the appropriate PGP key.
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 \
--recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# And, add the appropriate Docker source entry.
echo 'deb https://apt.dockerproject.org/repo debian-stretch main' > \
/etc/apt/sources.list.d/docker.list

# When that’s done, re-run apt-get.
apt-get update

# At this point, to install Docker simply type:
apt-get install -y docker-engine

# service docker start
service docker start

# o verify that docker is working properly, type:
docker run hello-world

# next will be able to install ansible
pip install ansible
