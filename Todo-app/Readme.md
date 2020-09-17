# Node Todo App

A Node app built with MongoDB and Angular. For demonstration purposes and a tutorial.

Node provides the RESTful API. Angular provides the frontend and accesses the API. MongoDB stores like a hoarder.

## Requirements

- [Node and npm](http://nodejs.org)
- MongoDB: Make sure you have your own local or remote MongoDB database URI configured in `config/database.js`

## Installation

1. Clone the repository: `git clone git@github.com:scotch-io/node-todo`
2. Install the application: `npm install`
3. Place your own MongoDB URI in `config/database.js`
4. Start the server: `node server.js`
5. View in browser at `http://localhost:8080`

## AKS deployment

1. Update the AKS and ACR names and resource groups inside the file `allow_aks_to_acr.sh`
2. Login to ACR: `docker login`
3. Build docker image: `docker build -t devopstestreg.azurecr.io/todo-app .`
4. Push to ACR: `docker push devopstestreg.azurecr.io/todo-app`
5. Run the kubernetes deployment: `kubectl create -f kubernetes.yml`
6. Wait for the loadbalancer ip to be created and access the app at `http://<load_balancer_ip>:8080`

## Tutorial Series

This repo corresponds to the Node Todo Tutorial Series on [scotch.io](http://scotch.io)

Each branch represents a certain tutorial.

- tut1-starter: [Creating a Single Page Todo App with Node and Angular](https://scotch.io/tutorials/creating-a-single-page-todo-app-with-node-and-angular)
- tut2-organization: [Application Organization and Structure](https://scotch.io/tutorials/node-and-angular-to-do-app-application-organization-and-structure)
- tut3-services: [Controllers and Services](https://scotch.io/tutorials/node-and-angular-to-do-app-controllers-and-services)

Happy Todo-ing!

![Todo-aholic](http://i.imgur.com/ikyqgrn.png)
