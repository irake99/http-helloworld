FROM golang:1.15.6-buster AS builder
WORKDIR /go
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \
    go build -o helloworld .

FROM alpine:3.12.3
RUN addgroup -S -g 1000 appuser && \
    adduser -S -u 1000 appuser -G appuser
USER appuser
WORKDIR /home/appuser
COPY --from=builder /go/helloworld .
ENTRYPOINT ["./helloworld"]
