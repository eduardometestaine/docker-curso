FROM node:10.21.0-alpine3.10

ENV environment=production

WORKDIR /usr/src/app

RUN apk update; npm install express

ADD app.js .

EXPOSE 3000

ENTRYPOINT [ "node", "app.js" ]