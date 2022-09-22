
FROM node:16

LABEL maintainer="nadeesani.navaratne"

WORKDIR /app
ADD . /app

RUN apt-get update && apt-get install default-jdk -y

RUN npm install

CMD npx wdio run ./wdio.conf.js allure generate allure-results && allure open
