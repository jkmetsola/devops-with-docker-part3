FROM node:16

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN git clone https://github.com/docker-hy/material-applications.git && \
    mv --verbose ./material-applications/example-frontend/* . && \
    rm -rf ./material-applications/* && \
    node -v && npm -v && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    useradd -m appuser && \
    chown appuser . && \
    rm -rf /var/lib/apt/lists/*
USER appuser

CMD serve -s -l 5000 build


EXPOSE 5000