# Websockets DEMO
Web Sockets DEMO with SpringBoot

## Step-by-Step Instructions

Build and start the Docker containers:
Run the following command to build and start the Docker containers using Docker Compose:

```sh
docker-compose up --build
```

You can test the WebSocket server using a WebSocket client like `wscat` or a simple HTML client.

## Using `wscat`

### Install `wscat`

Install `wscat` (a WebSocket client for command-line) if you haven't already:

```sh
npm install -g wscat
```
### Connect to the WebSocket Server

```sh
wscat -c ws://localhost:8080/websocket
```
### Send a message and Observe response from server

```sh
> Hello Server
< Server received: Hello Server
```

## Using HTML client with socketjs library

Admin to push the score
http://localhost:8080/adminpage.html

Subscirbers to get the LIVE score
http://localhost:8080/livescore.html

### Technology
Server Side: SpringBoot <br>
Client Side: JQuery, socketjs & curl


### Reference Documentation
For further reference, please consider the following sections:

* [Referred WebSockets Demo](https://www.youtube.com/watch?v=N2lneQPyHtM)

Credits to Amareswaran
