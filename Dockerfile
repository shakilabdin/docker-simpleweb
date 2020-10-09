# base image
FROM node:alpine

WORKDIR /usr/simpleweb

# Install dependecies 
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Deafult command
CMD [ "npm", "start" ]