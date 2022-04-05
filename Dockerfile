FROM golang:alpine


RUN apk update && apk add git

RUN go build -tags netgo -ldflags '-s -w' -o smtp2http

#RUN go install github.com/alash3al/smtp2http@latest

ENTRYPOINT ["smtp2http --listen=:25 --webhook=https://incidents1.crude.cloud/api/webhooks/smtp2http"]

WORKDIR /root/
