#!/bin/sh

docker run --rm -itd -p 18900:18900 --network=host  --name="coc-war"  \
${coc_war_img} \
--server.port=18900 \
--spring.cloud.config.label=$conf_label \
--spring.cloud.config.profile=$conf_profile \
--spring.profiles.active=dev,fast-discovery \
--eureka.client.service-url.defaultZone="http://$eureka_host1:$eureka_port1/eureka/"


./wait-for-it.sh 127.0.0.1:18900 --timeout=60 --strict -- echo "coc-war is up"