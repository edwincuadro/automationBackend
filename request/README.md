**Reqres API backend automation**

**About the project:**
The reqres API provides us a big suite of endpoints to test, whether manually or 
automatically. In this project, we use several endpoints to test and automate. This project 
pretends to bring us experience and knowledge in the QA automation area, implementing 
good practices and earning test skills.

**_Notes:_**
1. [ ] **All project work is on the Develop branch**
2. [ ] **The project was created and executed into a windows system.**

**Features:**
We have different features into each endpoint and request method, such as:
Base URL: https://reqres.in/api/

| Method | Endpoint | Feature                                           |
|--------|----------|---------------------------------------------------|
| GET    | users/id | client.feature                                    |
| POST   | users    | create.feature                                    |
| POST   | login    | successLogin.feature, <br/>unseccessLogin.feature |

Every endpoint mentioned before has different scenarios to validate the response and status 
code to make sure everything is going well with the API response to the requests by users.

| Feature                | Scenario                                                                                                        |
|------------------------|-----------------------------------------------------------------------------------------------------------------|
| client.feature         | *Check the service GET method<br/>*User that doesn't exist<br/>*Validate the email using unsupported data types |
| create.feature         | *Check the services by POST method<br/>*Validate the id using unsupported data types                            |
| successLogin.feature   | *Success Log in<br/>*Log in with invalid email                                                                  |
| unseccessLogin.feature | *Unsuccessful Log in                                                                                            |

**Previous requirements and Set up:**
To make sure that everything goes ok, to execute the project you need to have:
* Java, JDK version 1.8.0.33
* Maven, version 3.8.6 (As environment variable)
* JUnit5
* Karate framework
* Cucumber framework
* IDE

**Design pattern:**
The design pattern used is Page Object Model (POM), applying good practices with BDD methodology. 

**Execution:**
There are two ways to execute the project:

Individually:
Each feature has its own runner class, so you are able to execute every feature individually.

| Feature                | Runner         |
|------------------------|----------------|
| client.feature         | ClientRunner   |
| create.feature         | CreateRunner   |
| successLogin.feature   | successLogin   |
| unseccessLogin.feature | unseccessLogin |

Parallel:
You can run all tests in parallel form, so you will be able to get a general report executing just a runner class: 

| Feature                |     Runner     |
|------------------------|:--------------:|
| client.feature         | AllFeatureTest |
| create.feature         |                |
| successLogin.feature   |                |
| unseccessLogin.feature |                |

**Reports:**
We have reports to check once you run the tests, to view reports you need to go to the target directory that is generated every time when an individual test or parallel test is executed.

Path to get reports in target directory:
target/cucumber-html-reports/overview-features.html



**Author:**
Edwin Cuadro
QA Junior. 




