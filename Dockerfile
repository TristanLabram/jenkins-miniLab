FROM node:latest

RUN apt update

RUN apt install npm -y

RUN node index.js
