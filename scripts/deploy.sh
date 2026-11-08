#!/bin/bash
# Indique que ce fichier est un script à exécuter avec bash

# Entre dans le dossier du site, et si il n'existe pas j'arrête le script avec un message d'erreur
cd ~/serveur/site-equipe || { echo "Erreur : le dossier ~/serveur/site-equipe n'existe pas"; exit 1; }

# Récupère les dernières modifications depuis GitHub
git pull

# Copie de la page principale du site dans le dossier du serveur web
sudo cp index.html /var/www/html/

# Copie de la feuille de style au même endroit
sudo cp style.css /var/www/html/

# Affiche un message pour dire que tout s'est bien passé
echo "Déploiement terminé : le site est à jour !"
