#!/bin/bash
docker exec `docker ps | grep -i influx | awk '{print $1}'` influx -execute 'CREATE DATABASE cadvisor'
docker exec `docker ps | grep -i influx | awk '{print $1}'` influx -execute 'CREATE RETENTION POLICY one_day_only ON cadvisor DURATION 1d REPLICATION 1 DEFAULT'