SHELL := /bin/bash

UID=$(shell id -u)
GID=$(shell id -g)

# Сборка образа сервиса
build:
	docker build --progress=plain --tag=grpc-shared .

run:
	docker run --rm -it grpc-shared sh
