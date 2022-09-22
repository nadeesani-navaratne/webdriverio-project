
FROM node:16

LABEL maintainer="nadeesani.navaratne"

WORKDIR /app
ADD . /app

#Install Java
RUN apt-get update && apt-get install default-jdk -y

RUN npm install

#Run the tests and generate report
CMD npx wdio run ./wdio.conf.js allure generate allure-results && allure open
