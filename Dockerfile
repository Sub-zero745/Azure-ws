# Imagen base oficial de Node.js
FROM node:18

# Crear carpeta de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json (si existe)
COPY package*.json ./

# Instalar dependencias (aquí no instala nada porque usas solo net nativo)
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto en el que escucha tu servidor
EXPOSE 80

# Comando para arrancar la app
CMD ["npm", "start"]
