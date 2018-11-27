FROM golang:1.11.2-alpine
RUN apk --update add git make npm && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
RUN go get -u github.com/golang/dep/cmd/dep
WORKDIR /go/src/app
VOLUME ["/go/src/app"]
