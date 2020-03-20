# A simple and flexible project to test shinyproxy

## How to use

- Clone this repo to a local directory, e.g. /usr/wd
- Copy the shinyproxy jar file to ./shinyproxy
- Change the jar name in ./shinyproxy/Dockerfile to your just-copied jar file name
- Change the work-directory in ./shinyproxy/application.yml to the absolute path of your working directory, e.g., /usr/wd
- Tweak docker-compose.yml and shinyproxy/application.yml
- If you use the `shrektan/rdocker4working` as the container image, remember to `docker pull shrektan/rdocker4working` first
- Run `docker-compose up --build` in the terminal
- Direct to 127.0.0.1:8080, you will see the shinyproxy running.
