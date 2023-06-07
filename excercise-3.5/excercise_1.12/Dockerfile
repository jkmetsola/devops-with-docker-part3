FROM node:16

RUN git clone https://github.com/docker-hy/material-applications.git
RUN mv --verbose ./material-applications/example-frontend/* .
RUN rm -rf ./material-applications/*

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN node -v && npm -v
RUN npm install
RUN npm run build
RUN npm install -g serve

RUN useradd -m appuser
RUN chown appuser .
USER appuser

CMD serve -s -l 5000 build


EXPOSE 5000