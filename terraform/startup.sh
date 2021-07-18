# Startup Script
#! /bin/bash
    METADATA_VALUE=$(curl http://metadata.google.internal/computeMetadata/v1/instance/attributes/foo -H "Metadata-Flavor: Google") # Input google metadata
    apt update # Search for the packages, necessary to find them later
    apt-get upgrade -y #Install the last ones needed
    apt-get install docker-compose -y # Install docker compose
    git clone https://github.com/igorhlino/ConfigMgmtChallenge.git github # Clone the github files to local
    docker-compose -f github/application/nginx-proxy.yaml up -d #Build the nginx container
    docker-compose -f github/application/go-app-compose.yaml up -d #Build the go application
