
golang-dep-image:
	docker build -f ./golang/golang-dep.dockerfile -t golang-dep .

golang-dep-upload: docker-auth
	docker tag golang-dep:latest dynbit/golang-dep:$$CIRCLE_BUILD_NUM \
    && docker push dynbit/golang-dep:$$CIRCLE_BUILD_NUM