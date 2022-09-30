# Node Quickstart with Docker and Compose

I stole all of this node code from another repo. I mainly just added a docker setup. This is useful for a quickstart when I need to support node infrastructure in the cloud and I need the minimum basic app that qualifies as a node backend running express.

Also, I bounce around to different machines a lot and I don't do much work on application codebases. So it's kind of a pain every time i start working on a new project or switch machines and all i really need is a boiler plate app to serve as a place holder for my infrastructure stacks. But all the versions of all the software like node and npm are always either out of date or broken. But there's never a time when i dont have docker and docker compose purring like a kitten.

By having this repository handy, i can let docker handle all of the developer software and interact with the app through the container. 

## Installation

- `git clone git@github.com:jaylong255/node-boilerplate.git`
- `cd node-boilerplate`
- `docker-compose build`
- `docker-compose up`

## Other Commands
If for some reason you need to edit this code and keep working on it the way i do, here are some useful commands. (They're pretty much just wrappers for node commands)

Install or update node modules.

`docker-compose run app npm install`

Start the express webserver

`docker-compose run app npm start`

## Building an Image to Run in a Container Cluster
The main purpose for this boilerplate is to build containers that you can use to launch containerized infrastructure stacks without having to wait on the development team or potentially troubleshoot issues with their code. Having a simple "Hello World" application allows you to eliminate the codebase itself as a point of failure. It can also be useful to troubleshoot failures in existing stacks. Replacing the image of a robust web application with a simple boilerplate can tell you a lot about what is working and what is not working. If your stack breaks with a boilerplate, you know it's something on the infrastructure side causing a problem. If not, the chances are greater that it's on the code side. Again, not perfect, but very useful.

## Other Frameworks
Note: this boilerplate is also a great place to start for front end projects in frameworks like React.js and Vue.js. You'll need to make a few adjustments but they all use the same image and the Node.js example serves as a great framework for how to implement other js frameworks.