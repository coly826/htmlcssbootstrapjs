# Utiliser une image de base légère de serveur web
FROM nginx:alpine

# Copier les fichiers du projet dans le dossier du serveur Nginx
COPY . /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Démarrer le serveur Nginx
CMD ["nginx", "-g", "daemon off;"]
