# Deploy Shinyproxy via Docker Compose

## It's a demo of

- Setting up Shinyproxy via docker compose
- Customizing the home page via a template (see `shinyproxy/fragments/navbar.html`)
- Deploying a "proxy" app that forwards the traffic to the "global" app, which is deployed via docker compose service

## How to use

- Clone this repo to a local directory, e.g. `/usr/wd/shinyproxy-docker-compose-example`
- Copy the shinyproxy jar file (downloaded from shinyproxy.io) to `./shinyproxy/shinyproxy.jar`
  1. Download the most recent version of shinyproxy (e.g. shinyproxy-2.5.0.jar from https://www.shinyproxy.io/downloads/shinyproxy-2.5.0.jar).
  1. Rename the .jar file as shinyproxy.jar
  1. Move the file to shinyproxy-docker-compose-example/shinyproxy/shinyproxy.jar
- You may want to tweak `docker-compose.yml` and `shinyproxy/application.yml`
- Run `docker-compose build` to build the necessary images
- Run `docker-compose up -d` to launch the apps
- Direct to http://127.0.0.1:8080, you should see the shinyproxy running.

## Apps

1. `app-normal`: This is a regular shinyproxy app. Each user will have his/her own apps. It means a new docker container will be lanuched for each user.
2. `app-in-compose`: This is like a shiny server app. This app is only lanuched once by docker compose. Shinyproxy will only run a "proxy" (nginx based) container, which redirect the traffic to the "global" app. 
3. `app-not-in-compose`: The underlying app is the same as `app-in-compose`, except that it's like a normal shinyproxy app, so different user doesn't share the same global environment.
