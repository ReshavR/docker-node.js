#Using the official node.js base image
FROM node:18

#Creating the app working directory
WORKDIR /usr/src/app

#Copying the *.json files to working dir
COPY package*.json ./

#Installing the dependencies
RUN npm install

#Bundle app source code
COPY . .

#Exposing the port
EXPOSE 8080

#Executing the command to run the node.js app
CMD [ "node", "server.js" ]