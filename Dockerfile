FROM node:latest

RUN apt update

WORKDIR /usr/app

COPY ./ /usr/app

RUN npm install

EXPOSE 5000/tcp

CMD [ "npm","start" ]

RUN pwd

RUN ls

RUN npm install express
