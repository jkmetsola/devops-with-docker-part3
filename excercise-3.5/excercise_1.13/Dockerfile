FROM golang:1.16

# COPY ./material-applications/example-backend /example-backend

RUN git clone https://github.com/docker-hy/material-applications.git
RUN mkdir /example-backend
RUN mv ./material-applications/example-backend/* /example-backend
RUN rm -rf ./material-applications/*

WORKDIR /example-backend

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN pwd
RUN go build
RUN go test ./...

RUN useradd -m appuser
RUN chown appuser .
USER appuser

CMD ./server



EXPOSE 8080