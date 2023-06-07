FROM golang:1.16.15-alpine3.15

ENV PORT=8080 \
    REQUEST_ORIGIN=http://localhost:5000 \
    REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /example-backend

RUN apk add --no-cache --virtual .build-deps git build-base && \
    git clone https://github.com/docker-hy/material-applications.git && \
    mv ./material-applications/example-backend/* . && \
    rm -rf ./material-applications/* && \
    go build && \
    go test ./... && \
    addgroup appgroup && \
    adduser -D -G appgroup appuser && \
    chown -R appuser:appgroup . && \
    apk del .build-deps

USER appuser

CMD ["./server"]

EXPOSE 8080