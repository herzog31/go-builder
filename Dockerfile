FROM golang:latest

ENV GOPATH /go
ENV BUILDPATH src
ENV GOOS linux
ENV GOARCH amd64

COPY build.sh /build.sh
RUN chmod +x /build.sh

CMD [ "/build.sh" ]