# WebdriverIO and Javascript assesment


## Table of Contents

* [About](#about)
* [Project Goals](#project_goals)
* [Instructions](#instructions)
* [Technologies](#technologies)

## About

This is a project written in javascript as programming language using WebdriverIO framework to write frontend automation testcases.
M


## Project Goals

The goal of this project is to practice with:

* Front-End Automation testing using WebdriverIO 



## Instructions

### _Setting up locally_

To set up the application on your local server follow the instrunctions below.

### _Get the code from remote repo_ 

1. git clone https://github.com/nadeesani-navaratne/webdriverio-project.git
2. Open the downloaded folder in your favourite IDE - VS code ,Atom etc
3. Install the dependencies using the command
``` 
    npm install
```

### _How to run tests locally
1. After opening the project in one of the IDEs run by giving
``` 
    npx wdio wdio.conf.js
```
2. Inorder to run file test file
``` 
    npx wdio wdio.conf.js --spec <name_of_the_specfile>
    Ex: npx wdio wdio.conf.js --spec carmodels.spec.js
```



### _How to run tests in a docker container
1. Run following command to create a docker container
``` 
    docker build -t webdriverio-image .
```

2. After successful completion of first step, run following command.
``` 
    docker run webdriverio-image
```


## Technologies

* Javascript
* Mocha 
* Selenium-Standalone service(Java)
* Docker



## Parallel Testing
   WebdriverIO support parallel testing itself,if you run few spec files, lets say 3 spec files and run the tests. It wil open up 3 seperate browser windoes and each will run on its own window.
   However using Selenium standalone service you can run parallel test without other driver services

## Reporting
   WebdriverIO can intergrete with different reportgenerating frameworksto generate reprots.
   Allure is one of them, and users can use to genereate clear form of reports.
   To view the report can use the command -                              allure generate allure-results && allure open

   At the same time user can run the tests as well.
   npx wdio run ./wdio.conf.js allure generate allure-results && allure open
   
      

