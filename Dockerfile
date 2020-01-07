FROM node:latest

COPY . /bin/www
WORKDIR /bin/www/src

RUN npm install && \
    npm run build && \
    npm install -g http-server

EXPOSE 80

CMD [ "http-server -p 80 ./dist/" ]