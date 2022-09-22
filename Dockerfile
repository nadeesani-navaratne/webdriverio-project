#FROM ubuntu:18.04

#LABEL maintainer="nadeesani.navaratne"
#RUN apt-get install -y wget
#RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#RUN dpkg -i google-chrome-stable_current_amd64.deb  # problem here
#RUN apt -f install -y
FROM node:16

LABEL maintainer="nadeesani.navaratne"

WORKDIR /app
ADD . /app

# Download and install chromedriver
RUN wget https://chromedriver.storage.googleapis.com/105.0.5195.52/chromedriver_linux64.zip && unzip -d /usr/bin chromedriver_linux64.zip && rm chromedriver_linux64.zip


# Download and unpack Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update && apt-get install google-chrome-stable -y



# Download and install google chrome
#RUN curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
#RUN apt-get update && apt-get install google-chrome-stable_current_amd64.deb -y


#RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \ 
#    && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
#RUN apt-get update && apt-get -y install google-chrome-stable

#RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#RUN apt-get update && apt install -y ./google-chrome*.deb
#RUN wget https://chromedriver.storage.googleapis.com/92.0.4515.107/chromedriver_linux64.zip
#RUN unzip chromedriver_linux64.zip

#RUN mv chromedriver /app/node_modules/chromedriver/lib/chromedriver

#RUN apt-get -y build-dep libcurl4-gnutls-dev
#RUN apt-get -y install libcurl4-gnutls-dev
#RUN apt-get install libcurl4-openssl-dev libssl-dev
# Download and install chromedriver

#RUN curl -O https://chromedriver.storage.googleapis.com/$(curl https://chromedriver.storage.googleapis.com/LATEST_RELEASE_100)/chromedriver_linux64.zip && unzip -d /usr/bin chromedriver_linux64.zip && rm chromedriver_linux64.zip



# Download and install google chrome

#RUN curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

#RUN yum install google-chrome-stable_current_x86_64.rpm -y

#RUN npm install

#CMD npx wdio run ./wdio.conf.js --spec home.page.e2e.js
CMD npx wdio run ./wdio.conf.js
ENTRYPOINT ["google-chrome-stable", "--no-sandbox"]