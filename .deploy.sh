#!/bin/bash

echo "git pull"
sudo git pull

echo "build sample"
./gradlew build

echo "kill sample"
pkill -9 -f sample

echo "execute sample"
nohup java -Dspring.profiles.active=prod -jar build/libs/sample-0.0.1-SNAPSHOT.jar > /dev/null &