#!/bin/bash

sudo apt update

sudo apt-cache search tomcat

sudo apt install tomcat9 tomcat9-admin

 ss -ltn

 sudo systemctl enable tomcat9

 sudo ufw allow from any to any port 8080 proto tcp