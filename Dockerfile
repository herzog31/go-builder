FROM golang:latest

ENV GOPATH /go
env PATH $GOPATH/bin:$PATH
ENV BUILDPATH src
ENV GOOS linux
ENV GOARCH amd64

RUN go get -u github.com/jstemmer/go-junit-report

COPY build.sh /build.sh
RUN chmod +x /build.sh

CMD [ "/build.sh" ]