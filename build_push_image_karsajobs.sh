#!/bin/bash

# Membuat Docker image dari Dockerfile
docker build -t karsajobs:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image
docker tag karsajobs:latest ghcr.io/matthewcalbert/a433-microservices/karsajobs:latest

# Login ke GitHub Packages via Terminal
docker login ghcr.io -u MatthewCAlbert

# Mengunggah image ke GitHub Packages
docker push ghcr.io/matthewcalbert/a433-microservices/karsajobs:latest
