FROM node:latest

RUN apt update

RUN mkdir -p /usr/app

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY / /usr/app/

EXPOSE 5000

CMD [ "npm", "run", "start" ]

RUN npm install express
