#A simple dockerfile for running rsync
FROM alpine:edge
MAINTAINER Serdar.Sarioglu@mysystem.org

RUN apk update
RUN apk add rsync
ENV Src 8.8.8.8
ENV Dst 8.8.8.8

ENTRYPOINT ["sh", "-c", " rsync -avhHP --exclude .snapshot ${Src} ${Dst}"]
