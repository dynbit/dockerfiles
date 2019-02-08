FROM golang:1.11.2-stretch

# NODE && GO

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update \
	&& apt-get install -y  jq nodejs \
	&& rm -rf /var/lib/apt/lists/*
RUN go get -u github.com/golang/dep/cmd/dep
RUN wget -O - -q https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.13.2

WORKDIR /go/src/app
VOLUME ["/go/src/app"]

# MONGO DB
ARG MONGO_PACKAGE=mongodb-org
ARG MONGO_REPO=repo.mongodb.org
ENV MONGO_PACKAGE=${MONGO_PACKAGE} MONGO_REPO=${MONGO_REPO}

ENV MONGO_MAJOR 3.6
ENV MONGO_VERSION 3.6.10

RUN echo "deb http://$MONGO_REPO/apt/debian stretch/${MONGO_PACKAGE%-unstable}/$MONGO_MAJOR main" | tee "/etc/apt/sources.list.d/${MONGO_PACKAGE%-unstable}.list"

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

RUN set -x \
	&& apt-get update --allow-unauthenticated \
	&& apt-get install -y --allow-unauthenticated \
		${MONGO_PACKAGE}=$MONGO_VERSION \
		${MONGO_PACKAGE}-server=$MONGO_VERSION \
		${MONGO_PACKAGE}-shell=$MONGO_VERSION \
		${MONGO_PACKAGE}-mongos=$MONGO_VERSION \
		${MONGO_PACKAGE}-tools=$MONGO_VERSION \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /var/lib/mongodb \
	&& mv /etc/mongod.conf /etc/mongod.conf.orig


