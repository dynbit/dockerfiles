FROM golang:alpine
RUN apk update; apk upgrade
RUN apk add git
RUN go get -u github.com/golang/dep/cmd/dep
WORKDIR /go/src/app
VOLUME ["/go/src/app"]