FROM node:latest

RUN apt update

RUN apt install npm

RUN npm intsall express
