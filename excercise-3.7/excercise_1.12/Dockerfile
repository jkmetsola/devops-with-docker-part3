FROM node:16.20.0-alpine3.18

ENV REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /example-frontend

RUN apk add --no-cache --virtual .build-deps git && \
    git clone https://github.com/docker-hy/material-applications.git && \
    mv --verbose ./material-applications/example-frontend/* . && \
    rm -rf ./material-applications/* && \
    node -v && npm -v && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    addgroup appgroup && \
    adduser -D -G appgroup appuser && \
    chown -R appuser:appgroup . && \
    apk del .build-deps
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]

EXPOSE 5000