#!/bin/sh

docker run --rm -itd -p 18600:18600 --network=host  --name="coc-player"  \
${coc_player_img} \
--server.port=18600 \
--spring.cloud.config.label=$conf_label \
--spring.cloud.config.profile=$conf_profile \
--spring.profiles.active=dev,fast-discovery \
--eureka.client.service-url.defaultZone="http://$eureka_host1:$eureka_port1/eureka/"


./wait-for-it.sh 127.0.0.1:18600 --timeout=60 --strict -- echo "coc-player is up"