
OUT=stdout

build-all:
	make build OUT=stdout
	make build OUT=loki
	make build OUT=es

push-all:
	make push OUT=stdout
	make push OUT=loki
	make push OUT=es

build:
	docker-compose -f docker-compose.$(OUT).yml build

run: build
	docker-compose -f docker-compose.$(OUT).yml up

push:
	docker-compose -f docker-compose.$(OUT).yml push
