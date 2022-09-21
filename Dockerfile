#FROM ubuntu:18.04

#LABEL maintainer="nadeesani.navaratne"
#RUN apt-get install -y wget
#RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#RUN dpkg -i google-chrome-stable_current_amd64.deb  # problem here
#RUN apt -f install -y
FROM node:14

LABEL maintainer="nadeesani.navaratne"

WORKDIR /app
ADD . /app

#RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \ 
#    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
#RUN apt-get update && apt-get -y install google-chrome-stable

RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get update && apt install -y ./google-chrome*.deb
RUN wget https://chromedriver.storage.googleapis.com/92.0.4515.107/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip

RUN mv chromedriver /app/node_modules/chromedriver/lib/chromedriver

#RUN apt-get -y build-dep libcurl4-gnutls-dev
#RUN apt-get -y install libcurl4-gnutls-dev
#RUN apt-get install libcurl4-openssl-dev libssl-dev


RUN npm install

#CMD npx wdio run ./wdio.conf.js --spec home.page.e2e.js
CMD npx wdio run ./wdio.conf.js
#ENTRYPOINT ["tail", "-f", "/dev/null"]