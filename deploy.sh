#!/bin/bash

cd core-backend

./gradlew clean build -x test

cd core/api/build/libs/

pid=$(lsof -t -i:8080)

if [ -n "$pid" ]; then
    echo "Killing process running on port 8080 with PID: $pid"
    kill -9 $pid
else
    echo "No process running on port 8080"
fi

nohup java -Dspring.profiles.active=prod -jar api.jar &

echo "Script execution finished."
