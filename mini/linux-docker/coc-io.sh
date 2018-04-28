#!/bin/sh

docker run --rm -itd -p 18500:18500 --network=host  --name="coc-io"  \
${coc_io_img} \
--server.port=18500 \
--spring.cloud.config.label=$conf_label \
--spring.cloud.config.profile=$conf_profile \
--spring.profiles.active=dev,fast-discovery \
--eureka.client.service-url.defaultZone="http://$eureka_host1:$eureka_port1/eureka/" \
--super-cell.coc.api-token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjlhZjEzM2U1LWMyZjktNDc5YS05ZDNjLThiNTcyYWQ4ZWU3MiIsImlhdCI6MTUyNDQ2MzMwNSwic3ViIjoiZGV2ZWxvcGVyL2ZjODFlOGZmLTZiNTEtNzM1My1kMzRlLWU4NTU1YmUxYzM0NyIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjE4Mi4xNDguMTQuMjE0Il0sInR5cGUiOiJjbGllbnQifV19.4JxKvlMOAxZbp0RqszzI5H3X2mCS8zL7sQzmPUrHqeCk2GF6i4U87-F7uiJFlUL-saNNYAI26p0Ac6zDIp6v4A

./wait-for-it.sh 127.0.0.1:18500 --timeout=60 --strict -- echo "coc-io is up"