FROM node:20-alpine

RUN apk add --no-cache git

RUN git clone --depth=1 https://github.com/Templates-dude/inenter.git

WORKDIR /inenter

RUN npm install

CMD npm start
