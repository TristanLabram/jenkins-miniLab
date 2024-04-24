FROM node:latest

RUN apt update

RUN apt install npm -y

RUN npm -v

RUN npm install express
