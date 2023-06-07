FROM golang:1.16.15-alpine3.15 as builder

ENV PORT=8080 \
    REQUEST_ORIGIN=http://localhost:5000 \
    REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /example-backend

RUN apk add --no-cache --virtual .build-deps git build-base && \
    git clone https://github.com/docker-hy/material-applications.git && \
    mv ./material-applications/example-backend/* . && \
    rm -rf ./material-applications/* && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server . && \
    go test ./... && \
    apk del .build-deps

FROM scratch

WORKDIR /

COPY --from=builder /example-backend/server /server

CMD ["./server"]

EXPOSE 8080