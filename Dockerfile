FROM golang:alpine

RUN go build -tags netgo -ldflags '-s -w' -o app

#RUN apk update && apk add git

#RUN go get github.com/alash3al/smtp2http

ENTRYPOINT ["smtp2http"]

WORKDIR /root/
