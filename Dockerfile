# Using an official Node.js runtime as a base image
FROM node:18-alpine

#Setting up a working directory in the container
WORKDIR /the/workdir/path

#Copying package.json to working directory
COPY package*.json ./

#Installing required packages specified in package.json
RUN npm install 

#Copying all local files to the containers working directory 
COPY . .

#Exposing to Port 8080
EXPOSE 8080

#Running the application itself

CMD [ "npm" , "start" ]


