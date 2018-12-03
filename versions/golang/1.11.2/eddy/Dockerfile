FROM golang:1.11.2-stretch
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y jq nodejs \
	&& rm -rf /var/lib/apt/lists/*
RUN go get -u github.com/golang/dep/cmd/dep
WORKDIR /go/src/app
VOLUME ["/go/src/app"]
