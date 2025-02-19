FROM node:14.17.5

WORKDIR /app

COPY ./src/package*.json ./

RUN npm install --production --silent

COPY ./src/* .
COPY ./src/views/* ./views/

EXPOSE 8080

CMD [ "node", "server.js" ]