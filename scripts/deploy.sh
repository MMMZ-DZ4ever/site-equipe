#!/bin/bash
# Indique que ce fichier est un script à exécuter avec bash

# Je vais dans le dossier du site, et si il n'existe pas j'arrête le script avec un message d'erreur
cd ~/serveur/site-equipe || { echo "Erreur : le dossier ~/serveur/site-equipe n'existe pas"; exit 1; }

# Je récupère les dernières modifications depuis GitHub
git pull

# Je copie la page principale du site dans le dossier du serveur web
cp index.html /var/www/html/

# Je copie la feuille de style au même endroit
cp style.css /var/www/html/

# J'affiche un message pour dire que tout s'est bien passé
echo "Déploiement terminé : le site est à jour !"
