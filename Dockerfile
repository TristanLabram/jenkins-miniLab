#Changing from "node:21-alpine3.18" to "node:latest" to see if this was also complicit in preventing this from working previously
FROM node:latest

RUN mkdir -p /usr/app

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY . /usr/app/

#The port doesn't need to be exposed here as jenkins can expose the port at container creation in the "docker run" command
#EXPOSE 5000

CMD [ "npm", "run", "start" ]

RUN npm install express

CMD ["node", "index.js"]
