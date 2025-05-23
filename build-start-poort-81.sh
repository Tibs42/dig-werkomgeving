#!/bin/bash

# stop en vw bestaande container
docker stop demo-site-container 2>/dev/null
docker rm demo-site-container 2>/dev/null

# bouw een nieuwe image via dockerfile
docker build -t demo-site-image .

#start container koppel poort 81 van je pc en 80 van pc
docker run -d --name demo-site-container -p 81:80 demo-site-image
