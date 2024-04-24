FROM node:latest

RUN apt update

WORKDIR /usr/app

COPY ./ /usr/app

RUN npm install

CMD [ "npm","start" ]

RUN pwd

RUN ls
