FROM node:16

WORKDIR /

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/express-app

RUN npm install

CMD node index.js