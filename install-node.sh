#!/bin/bash
sudo mv /tmp/src /usr/src/app/
sudo mv /tmp/package.json /usr/src/app/
sudo mv  /tmp/.env /usr/src/app/
sudo apt update
sudo apt install -y nodejs npm
sudo node -v
cd /usr/src/app/ && npm install
sudo mv /tmp/weather-svc-v1-consul-client.json /opt/consul/config/
sudo chown consul:consul /opt/consul/config/weather-svc-v1-consul-client.json
sudo chmod 755 /opt/consul/config/weather-svc-v1-consul-client.json
sudo ls -ltr /opt/consul/config/
