# Utilitza una imatge oficial de Node.js
FROM node:23-alpine3.20
RUN mkdir -p /opt/app

# Estableix el directori de treball
WORKDIR /opt/app

# Copia els fitxers de l'aplicació
COPY app/ .

# Instal·la les dependències
RUN npm install


# Exposa el port 3000
EXPOSE 3000

# Comanda per executar l'aplicació
CMD [ "npm", "start"]
