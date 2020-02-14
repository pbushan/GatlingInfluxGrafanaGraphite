# Docker solution for Gatling using Influx and Grafana [Graphite enabled]

If you're a serious dev or performance engineer that leverages Gatling to run performance tests, this kit is an essential.

Its a light-weight docker-compose solution to spin up InfluxDB with Graphite enabled and Grafana for metrics collection and analysis during your Gatling test runs.

# Prerequisites
The solution needs docker and docker-compose

> Note: If you don't have docker or docker-compose, use the bash script below

> download the bash script from my repo

`sudo curl https://raw.githubusercontent.com/pbushan/GatlingInfluxGrafanaGraphite/master/grafana-influx.sh`

> run the bash script

`sh grafana-influx.sh`

> reboot your server

`sudo reboot`

# How to deploy if docker and docker-compose are already installed

Create a separate folder and just clone this repo into the folder using 

`git clone https://github.com/pbushan/GatlingInfluxGrafanaGraphite.git`

Run docker-compose using

`sudo docker-compose up`
