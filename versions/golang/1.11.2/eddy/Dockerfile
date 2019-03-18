FROM golang:1.12-stretch

# NODE && GO
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update \
	&& apt-get install -y  jq nodejs \
	&& rm -rf /var/lib/apt/lists/*
RUN wget -O - -q https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sh -s v1.15.0
RUN curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
	&& chmod +x /usr/local/bin/docker-compose

WORKDIR /go/src/app
VOLUME ["/go/src/app"]
