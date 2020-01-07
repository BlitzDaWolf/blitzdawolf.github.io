FROM node:latest

COPY . /bin/www
WORKDIR /bin/www/src

RUN npm install && \
    npm install -g http-server && \
    npm run build

EXPOSE 80

CMD [ "http-server -p 80 ./dist/" ]