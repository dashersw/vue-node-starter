FROM node:alpine

WORKDIR /src
RUN npm install -g nodemon

ADD package.json package-lock.json ./
RUN npm install

ADD . /src

CMD ["nodemon", "src"]
