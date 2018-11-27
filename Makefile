
-include .env
include golang/Makefile

docker-auth:
	docker login -u "${DOCKER_USER}" -p "${DOCKER_PASSWORD}"