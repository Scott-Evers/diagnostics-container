#!/usr/local/bin/fish

docker build -t involtasevers/diag_tools:1.0.0 .
docker push involtasevers/diag_tools:1.0.0
docker tag involtasevers/diag_tools:1.0.0 involtasevers/diag_tools:latest
docker push involtasevers/diag_tools:latest

