#!/bin/sh

docker run --rm -itd -p 18700:18700 --network=host  --name="coc-clan"  \
${coc_clan_img} \
--server.port=18700 \
--spring.cloud.config.label=$conf_label \
--spring.cloud.config.profile=$conf_profile \
--spring.profiles.active=dev,fast-discovery \
--eureka.client.service-url.defaultZone="http://$eureka_host1:$eureka_port1/eureka/"


./wait-for-it.sh 127.0.0.1:18700 --timeout=60 --strict -- echo "coc-clan is up"