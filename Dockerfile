FROM golang:1.13.5-alpine3.11 as build

WORKDIR /usr/src/app

COPY engine.json codeclimate-prototool-lint.go ./
RUN apk add --no-cache git
RUN go get -t -d -v .
RUN go build -o codeclimate-prototool-lint .


FROM uber/prototool:latest
LABEL maintainer="Erik Silkensen <eriksilkensen@gmail.com>"

RUN chmod -R 0755 /usr/include/google/protobuf/

RUN adduser -u 9000 -D app

WORKDIR /code

COPY --from=build /usr/src/app/engine.json /
COPY --from=build /usr/src/app/codeclimate-prototool-lint /usr/src/app/

USER app

VOLUME /code

CMD ["/usr/src/app/codeclimate-prototool-lint"]
