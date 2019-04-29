all: build


build:
	docker stack deploy -c docker-compose.yml gogs

refresh: destroy build

destroy:
	docker stack rm gogs
	sleep 2

