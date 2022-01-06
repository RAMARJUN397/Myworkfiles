#!/bin/bash

sudo apt update
sudo apt-get install openjdk-8-jdk 
java -version
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
echo '$JAVA_HOME'
export JAVA_HOME
PATH=$PATH:$JAVA_HOME
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install jenkins
sudo service jenkins start
sudo service jenkins status
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
