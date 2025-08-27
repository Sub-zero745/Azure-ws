# Imagen base Node 18
FROM node:18

# Directorio de trabajo
WORKDIR /app

# Copiar package.json primero
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de archivos
COPY . .

# Exponer puerto 8080
EXPOSE 8080

# Iniciar app
CMD ["npm", "start"]
