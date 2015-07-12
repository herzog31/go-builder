FROM golang:latest

ENV GOPATH /go
env PATH $GOPATH/bin:$PATH
ENV BUILDPATH src
ENV GOOS linux
ENV GOARCH amd64

COPY build.sh /build.sh
RUN chmod +x /build.sh

CMD [ "/build.sh" ]