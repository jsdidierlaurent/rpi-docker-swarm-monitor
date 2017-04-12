run:
	@docker stack deploy --compose-file docker-stack.yml monitor
stop:
	@docker stack rm monitor
init-influxdb:
	@docker exec `docker ps | grep -i influx | awk '{print $1}'` influx -execute 'CREATE DATABASE cadvisor'
