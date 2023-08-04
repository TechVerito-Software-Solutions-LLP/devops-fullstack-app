FROM golang:1.18.8-alpine3.17 AS BuildStage

RUN mkdir /build
WORKDIR /build

COPY . .

# RUN pwd

RUN go mod download

EXPOSE 8080

RUN go build -o main

FROM alpine:latest

WORKDIR /build

COPY --from=BuildStage /build /build/
EXPOSE 8080

# RUN pwd
# RUN ls -l

ENTRYPOINT [ "./main" ]
