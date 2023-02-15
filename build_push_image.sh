#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image
docker tag item-app:v1 ghcr.io/matthewcalbert/a433-microservices/item-app:v1

# Login ke GitHub Packages via Terminal
docker login ghcr.io -u MatthewCAlbert

# Mengunggah image ke GitHub Packages
docker push ghcr.io/matthewcalbert/a433-microservices/item-app:v1
