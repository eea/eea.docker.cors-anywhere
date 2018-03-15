FROM node:9.8.0

MAINTAINER michimau <mauro.michielon@eea.europa.eu>

WORKDIR /opt
RUN mpm install -g nodemon
COPY package.json server.js /opt/
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]
