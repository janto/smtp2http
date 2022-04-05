FROM golang:alpine


RUN apk update && apk add git

#RUN go build -tags netgo -ldflags '-s -w' -o app


RUN go install github.com/alash3al/smtp2http

ENTRYPOINT ["smtp2http"]

WORKDIR /root/
