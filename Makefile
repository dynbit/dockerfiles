-include .env

docker-auth:
	docker login -u "${DOCKER_USER}" -p "${DOCKER_PASSWORD}"

alpine-docker-make-git: docker-auth
	docker build -f versions/alpine/3.8/docker-make-git/Dockerfile -t alpine-docker-make-git . && \
	docker tag alpine-docker-make-git:latest dynbit/alpine-docker-make-git:${CIRCLE_BUILD_NUM}  && \
	docker tag alpine-docker-make-git:latest dynbit/alpine-docker-make-git:latest && \
	docker push dynbit/alpine-docker-make-git:${CIRCLE_BUILD_NUM} && \
	docker push dynbit/alpine-docker-make-git:latest

golang-git-make-dep-npm: docker-auth
	docker build -f versions/golang/1.11.2/git-make-dep-npm/Dockerfile -t golang-git-make-dep-npm . && \
	docker tag golang-git-make-dep-npm:latest dynbit/golang-git-make-dep-npm:${CIRCLE_BUILD_NUM}  && \
	docker tag golang-git-make-dep-npm:latest dynbit/golang-git-make-dep-npm:latest  && \
	docker push dynbit/golang-git-make-dep-npm:${CIRCLE_BUILD_NUM} && \
	docker push dynbit/golang-git-make-dep-npm:latest



