#Changing from "node:latest" to "node:21-alpine3.18" as "latest" was grabbing an image with whatever base OS happened to be updated last
FROM node:21-alpine3.18

#Set the working directory
WORKDIR /usr/app

#Copy across the "config" files to the working directory
COPY package*.json ./

#Install the dependancies required by the package.json file, attempting to configure this
RUN npm install

#Copy all files from our root '.' (in jenkins) to the workdir in the container
COPY . .

#The port doesn't need to be exposed here as jenkins can expose and publish the port to the host at container creation in the "docker run" command
#EXPOSE 5000

#I think this is needed to start the npm service before installing the expressjs package
#commentting out to see if I can install express via the "npm install" command using the dependancies listed in package.json
#CMD [ "npm", "run", "start" ]
#Install the expressjs package, I believe this can be configured to be installed automatically from the package.json file when the previous cmd is executed
#RUN npm install express

#Starts the application
CMD ["node", "index.js"]
