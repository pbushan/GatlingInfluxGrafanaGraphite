#!/bin/sh

set -eu

# Install Docker
sudo apt remove --yes docker docker-engine docker.io \
    && sudo apt update \
    && curl -SsL https://get.docker.com | sh \
    && printf '\nDocker installed successfully\n\n'

printf 'Waiting for Docker to start...\n\n'
sleep 10
# Get out of using sudo each time
sudo usermod -aG docker ubuntu \

# Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && sudo chmod +x /usr/local/bin/docker-compose \
    && printf '\nDocker Compose installed successfully\n\n'

sleep 10
# Install GIT
sudo apt update
sudo apt install git

# Install Graphana
mkdir DockerInfluxGrafanaGraphite \
&& cd DockerInfluxGrafanaGraphite \
&& git clone https://github.com/pbushan/GatlingInfluxGrafanaGraphite.git \
&& sudo docker-compose up -d \
&& printf '\nGrafana, Influx and Graphite installed successfully\n\n'