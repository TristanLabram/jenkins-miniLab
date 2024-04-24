FROM node:latest

RUN apt update

RUN apt install npm -y

RUN npm cache clean

RUN npm install express
