FROM node:8
MAINTAINER Neetendra Sing
WORKDIR /app
COPY package*.json ./
RUN npm install express mysql body-parser --save
RUN apt-get update 
RUN apt-get install mysql-client -y
COPY . .
EXPOSE 3000
