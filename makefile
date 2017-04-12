run:
	@docker stack deploy --compose-file docker-stack.yml monitor
stop:
	@docker stack rm monitor
init-influxdb:
	@chmod +x ./scripts/init-influxdb.sh ; ./scripts/init-influxdb.sh
