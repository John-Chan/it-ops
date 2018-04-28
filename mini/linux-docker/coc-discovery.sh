#!/bin/sh

docker run --rm -itd -p 18800:18800 --network=host  --name="coc-discovery"  \
${coc_discovery_img} \
--server.port=18800 \
--spring.cloud.config.label=$conf_label \
--spring.cloud.config.profile=$conf_profile \
--spring.profiles.active=dev,fast-discovery \
--eureka.client.service-url.defaultZone="http://$eureka_host1:$eureka_port1/eureka/" \
--shufork.sc.coc.discovery.enabled=true \
--shufork.sc.coc.discovery.clan-fetch.size=1 \
--shufork.sc.coc.discovery.clan-fetch.rate=3000 


./wait-for-it.sh 127.0.0.1:18800 --timeout=60 --strict -- echo "coc-discovery is up"