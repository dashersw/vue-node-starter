FROM node:alpine

WORKDIR /app
RUN apk add python make g++
ADD package.json package-lock.json ./
RUN npm install

ADD babel.config.js .
ADD vue.config.js .

VOLUME [ "/app/src" ]
VOLUME [ "/app/public" ]

CMD ["npm", "run", "serve"]
