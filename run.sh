docker pull  grafana/grafana

docker container stop Grafana
docker container rm Grafana

docker run -d -t  -p 3000:3000 \
  --net net_18  --ip 172.18.0.6 \
  --name=Grafana \
  --restart=always \
  -e TZ=Europe/Kiev \
  -e "GF_INSTALL_PLUGINS=vertamedia-clickhouse-datasource, \
        grafana-simple-json-datasource, \
        speakyourcode-button-panel, \
        agenty-flowcharting-panel" \
  -v grafana:/var/lib/grafana/ \
  -v grafana_plugins:/var/lib/grafana/plugins/ \
  grafana/grafana