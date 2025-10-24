# Étape 1 : Utiliser une image Nginx légère pour héberger ton site statique
FROM nginx:alpine

# Étape 2 : Supprimer le contenu par défaut de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Étape 3 : Copier tout le contenu du projet (HTML, CSS, JS)
COPY . /usr/share/nginx/html

# Étape 4 : Exposer le port 80 pour le déploiement
EXPOSE 80

# Étape 5 : Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
