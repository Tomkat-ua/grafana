container=grafana662
image=grafana/grafana:6.6.2-ubuntu

docker pull $image

docker container stop $container
docker container rm $container

docker run -d -t  -p 3001:3000 \
  --name=$container \
  -e TZ=Europe/Kiev \
  -v grafana662:/var/lib/grafana/ \
   $image  

