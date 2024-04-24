FROM node:latest

RUN apt update

RUN apt install npm -y

RUN sudo chown -R 128:135 "/.npm"
