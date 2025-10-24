# Utilise une image de base avec nginx
FROM nginx:alpine

# Supprime la config nginx par défaut
RUN rm -rf /usr/share/nginx/html/*

# Copie ton site HTML/JS dans le dossier nginx
COPY . /usr/share/nginx/html

# Expose le port 80
EXPOSE 80

# Le serveur nginx démarre automatiquement