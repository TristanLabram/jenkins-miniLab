FROM node:latest

RUN apt update

RUN apt install npm -y

RUN npm intsall express
