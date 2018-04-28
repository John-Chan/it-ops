#!/bin/sh

docker run --rm -itd -p 18002:18002 --network=host  --name="admin"  \
${admin_img} \
--spring.profiles.active=fast-discovery \
--server.port=18002 \
--eureka.client.service-url.defaultZone="http://$eureka_host1:$eureka_port1/eureka/"


./wait-for-it.sh 127.0.0.1:18002 --timeout=30 --strict -- echo "admin-server is up"
