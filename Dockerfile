FROM node:latest

RUN apt update

RUN apt install npm -y

RUN chown -R 128:135 "/.npm"
