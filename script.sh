#!/bin/bash

# Chemin vers votre répertoire de projet
PROJECT_DIR="/home/CYLLENE/alagarde/MIA"

# Aller dans le répertoire du projet
cd $PROJECT_DIR

# Tirer les dernières modifications depuis GitHub
git pull origin master

# Reconstruire et redémarrer les conteneurs avec docker-compose
docker-compose down
docker-compose build
docker-compose up -d

echo "Mise à jour terminée."