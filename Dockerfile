FROM alpine:latest
LABEL MAINTAINER="https://github.com/NavinSha1801/NavinFisher.git"
WORKDIR /NFisher/
ADD . /NFisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./NFisher.sh"
