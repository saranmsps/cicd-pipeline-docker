/* Importing an basic package avaible for node in Docker */
FROM node:carbon
/* This will tell directory which i am working */
WORKDIR /usr/src/app
/ * copying and package to curecnt directory */
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["npm", "start"]
