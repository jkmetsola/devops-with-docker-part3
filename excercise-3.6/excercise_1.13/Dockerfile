FROM golang:1.16

ENV PORT=8080 \
    REQUEST_ORIGIN=http://localhost:5000 \
    REACT_APP_BACKEND_URL=http://localhost:8080

RUN git clone https://github.com/docker-hy/material-applications.git && \
    mkdir /example-backend && \
    mv ./material-applications/example-backend/* /example-backend && \
    rm -rf ./material-applications/*

WORKDIR /example-backend

RUN go build && \
    go test ./... && \
    useradd -m appuser && \
    chown appuser . && \
    rm -rf /var/lib/apt/lists/*

USER appuser

CMD ./server

EXPOSE 8080