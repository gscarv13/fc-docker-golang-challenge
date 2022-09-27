FROM golang:latest as builder
WORKDIR /src
COPY main.go .
RUN go build main.go

FROM scratch
COPY --from=builder src/main .
ENTRYPOINT ["./main"]

