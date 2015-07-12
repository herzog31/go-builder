FROM golang:latest

ENV GOPATH /go
ENV BUILDPATH src

COPY build.sh /build.sh
RUN chmod +x /build.sh

CMD [ "/build.sh" ]