FROM alpine:3.8
RUN apk --update add git make docker && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
CMD ["/bin/sh"]
