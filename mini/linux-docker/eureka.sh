#!/bin/sh
# eureka 1

docker run --rm -itd -p $eureka_port1:$eureka_port1 --network=host  --name="eureka1"  \
${eureka_img} \
--spring.profiles.active=single,fast-discovery \
--server.port=$eureka_port1 \
--eureka.instance.hostname=$eureka_host1 

./wait-for-it.sh $eureka_host1:$eureka_port1 --timeout=30 --strict -- echo "eureka 1 is up"