start-cig:
	@docker stack deploy --compose-file cadvisor-influxdb-grafana/docker-stack.yml monitoring-cig
start-pv:
	@docker stack deploy --compose-file portainer-visualizer/docker-stack.yml monitoring-pv
start: start-cig start-pv
stop-cig:
	@docker stack rm monitoring-cig
stop-pv:
	@docker stack rm monitoring-pv
stop: stop-cig stop-pv

init-influxdb:
	@chmod +x ./cadvisor-influxdb-grafana/influxdb/init-influxdb.sh ; ./cadvisor-influxdb-grafana/influxdb/init-influxdb.sh
