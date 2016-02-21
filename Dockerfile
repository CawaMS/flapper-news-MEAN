FROM node

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

EXPOSE 3000

ENV MONGO_CONNECTION='mongodb://104.45.239.91:27017/news'

RUN npm install
CMD npm start
