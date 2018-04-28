#!/bin/sh

docker run --rm -itd -p 18001:18001 --network=host  --name="config"  \
${config_img} \
--spring.profiles.active=fast-discovery \
--server.port=18001 \
--spring.cloud.config.server.git.uri=$conf_repository \
--spring.cloud.config.server.git.search-paths=jaracks \
--RABBITMQ_HOST=$rabbitmq_host \
--RABBITMQ_PORT=$rabbitmq_port \
--eureka.client.service-url.defaultZone="http://$eureka_host1:$eureka_port1/eureka/"

./wait-for-it.sh 127.0.0.1:18001 --timeout=30 --strict -- echo "config-server is up"
