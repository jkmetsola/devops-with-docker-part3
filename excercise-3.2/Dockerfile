FROM node:16

WORKDIR /

RUN git clone https://github.com/docker-hy/material-applications.git

WORKDIR /material-applications/express-app

RUN sed -i 's/Hello World!/Helloooooooo World!/g' index.js
RUN sed -i 's/const PORT = 8080/const PORT = process.env.PORT || 8080/g' index.js

RUN npm install

CMD node index.js