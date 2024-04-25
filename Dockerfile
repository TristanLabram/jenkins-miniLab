#Changing from "node:latest" to "node:21-alpine3.18" as "latest" was grabbing an image with whatever base OS happened to be updated last
FROM node:21-alpine3.18

#NodeJS can't run in the root directory
RUN mkdir -p /usr/app

#Set the working directory to the newly created directory
WORKDIR /usr/app

#Copy across the entry point important 
COPY package*.json /usr/app/

#Install the dependancies required by the package.json file, currently I don't think this is configured
RUN npm install

#Copy all working files from the route directory to the working directory
COPY . /usr/app/

#The port doesn't need to be exposed here as jenkins can expose and publish the port to the host at container creation in the "docker run" command
#EXPOSE 5000

#I think this is needed to start the npm service before installing the expressjs package
CMD [ "npm", "run", "start" ]

#Install the expressjs package, I believe this can be configured to be installed automatically from the package.json file when the previous cmd is executed
RUN npm install express

#Starts the application
CMD ["node", "index.js"]
