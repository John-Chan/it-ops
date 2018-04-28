#!/bin/sh
docker run --rm -d --name rabbitmq -p $rabbitmq_port:5672 -p 15672:15672 rabbitmq:management

./wait-for-it.sh 127.0.0.1:$rabbitmq_port --timeout=30 --strict -- echo "rabbitmq is up"