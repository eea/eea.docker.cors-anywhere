FROM node

WORKDIR /opt

COPY package.json server.js /opt/
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]
