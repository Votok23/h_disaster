#!/bin/bash


PORT=80
HOST="localhost"
TIMEOUT=2


nc -z -w $TIMEOUT $HOST $PORT > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Nginx port $PORT is accessible"
    exit 0
else
    echo "Nginx port $PORT is NOT accessible"
    exit 1
fi
