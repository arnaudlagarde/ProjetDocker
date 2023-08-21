# Documentation Technique : Projet Docker - Gestion de Conteneurs Docker
## Introduction
Ce document technique décrit les étapes nécessaires pour mettre en place une infrastructure de conteneurs Docker dans le cadre du projet "Gestion de Conteneurs Docker". L'objectif principal est d'exécuter une application à l'aide de conteneurs Docker en utilisant Docker Compose. L'infrastructure comprend un load balancer, des serveurs web NGINX, et une base de données MySQL.

## Prérequis
Avant de commencer, assurez-vous d'avoir les éléments suivants en place :

Une machine virtuelle (VM) avec un hyperviseur tel que VirtualBox ou VMware.
Docker installé sur la VM.
Structure du Projet
La structure du projet est la suivante :

```lua 
project-root/
|-- web1/
|   |-- Dockerfile
|   |-- application/
|   |   |-- index.html
|-- web2/
|   |-- Dockerfile
|   |-- application/
|   |   |-- index.html
|-- haproxy.cfg
|-- docker-compose.yml
|-- certs/
|   |-- YOUR_CERT.pem
|-- README.md
|-- bdd/ (volume for MySQL data)
|-- script.sh
```

## Étapes
### 1. Génération d'un Certificat SSL/TLS
### 1.1. Utilisez l'outil OpenSSL pour générer un certificat SSL/TLS autosigné ou obtenez-en un à partir d'une autorité de certification (CA) de confiance.

### 1.2. Placez le certificat dans le dossier certs du projet, en le renommant en YOUR_CERT.pem.

### 2. Configuration du Load Balancer (HaProxy)
### 2.1. Modifiez le fichier haproxy.cfg pour configurer HaProxy avec le certificat SSL/TLS et les paramètres de votre choix.

### 3. Création des Dockerfiles
### 3.1. Dans les dossiers web1 et web2, créez les fichiers Dockerfile correspondants en copiant le contenu des fichiers Dockerfile fournis.

### 3.2. Personnalisez les Dockerfiles pour inclure votre application (fichier index.html).

### 4. Fichier docker-compose.yml
### 4.1. Créez un fichier docker-compose.yml à la racine du projet et copiez le contenu du fichier fourni.

### 4.2. Assurez-vous que les services web1 et web2 utilisent les Dockerfiles appropriés (build: ./web1 et build: ./web2).

### 4.3. Assurez-vous que les volumes sont correctement configurés pour le service db.

### 5. Script d'Automatisation (script.sh)
### 5.1. Créez un fichier script.sh à la racine du projet et copiez le contenu du script fourni.

### 5.2. Assurez-vous que le chemin vers le répertoire du projet est correct dans la variable PROJECT_DIR.

### 6. Exécution du Projet
### 6.1. Ouvrez un terminal et naviguez jusqu'au dossier du projet.

### 6.2. Exécutez le script script.sh pour mettre à jour l'infrastructure avec les dernières modifications.

### 7. Accès aux Applications
### 7.1. Accédez aux applications web via les URL suivantes :

http://localhost
http://192.168.50.3 (pour web1)
http://192.168.50.4 (pour web2)
## Conclusion
Ce document a couvert les étapes nécessaires pour mettre en place une infrastructure de conteneurs Docker comprenant un load balancer HaProxy, des serveurs web NGINX, et une base de données MySQL. Assurez-vous de personnaliser les configurations en fonction de vos besoins spécifiques et d'effectuer des tests approfondis avant de déployer en production.

