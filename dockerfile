# Choisir version Node (important pour Angular)
FROM node:18

# Dossier de travail
WORKDIR /app

# Copier fichiers
COPY package*.json ./

# Installer dépendances
RUN npm install

# Copier le reste
COPY . .

# Installer Angular CLI (version spécifique)
RUN npm install -g @angular/cli@16

# Exposer port Angular
EXPOSE 4200

# Lancer Angular
CMD ["ng", "serve", "--host", "0.0.0.0"]