# A simple and flexible project to test shinyproxy

## How to use

- Clone this repo to a local directory, e.g. `/usr/wd/shinyproxy-docker-compose-example`
- Copy the shinyproxy jar file (downloaded from shinyproxy.io) to `./shinyproxy/shinyproxy.jar`
- You may want to tweak `docker-compose.yml` and `shinyproxy/application.yml`
- Run `docker-compose build` to build the necessary images
- Run `docker-compose up -d` to launch the apps
- Direct to http://127.0.0.1:8080, you should see the shinyproxy running.

## Apps

1. `app-normal`: This is a regular shinyproxy app. Each user will have his/her own apps. It means a new docker container will be lanuched for each user.
2. `app-in-compose`: This is like a shiny server app. This app is only lanuched once by docker compose. Shinyproxy will only run a "proxy" (nginx based) container, which redirect the traffic to the "global" app. 
3. `app-not-in-compose`: The underlying app is the same as `app-in-compose`, except that it's like a normal shinyproxy app, so different user doesn't share the same global environment.
