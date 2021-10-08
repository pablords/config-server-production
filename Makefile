

.PHONY: up
up: 
	./up.sh

.PHONY: stop
stop: 
	./stop.sh

.PHONY: down
down:
	docker-compose down

.PHONY: logs
logs:
	./logs.sh

.PHONY: configure
configure:
	./configure.sh
