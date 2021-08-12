FROM ubuntu:20.04

# avoids user interaction with tzdata when building dockerfile 
# https://bobcares.com/blog/debian_frontendnoninteractive-docker
ARG DEBIAN_FRONTEND=noninteractive 

RUN apt-get update && apt-get install -y \
        texlive-full \
        fonts-font-awesome
       
VOLUME ["/tmp"]
WORKDIR /tmp