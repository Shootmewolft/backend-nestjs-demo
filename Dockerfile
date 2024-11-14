# Usa una imagen oficial de Node.js como base
FROM node:20

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Compila el proyecto de NestJS
RUN npm run build

# Expone el puerto de la aplicación (ajústalo si usas otro puerto)
EXPOSE 3000

# Comando de inicio
CMD ["npm", "run", "start:prod"]
