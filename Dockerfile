FROM node:latest

RUN apt update

RUN apt install npm -y

CMD [ "npm","start" ]
