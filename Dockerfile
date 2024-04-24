FROM node:latest

RUN apt update

RUN apt install npm -y

RUN npm install express
