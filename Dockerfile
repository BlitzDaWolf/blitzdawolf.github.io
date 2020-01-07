FROM node:latest

ENV REPOSITORY=

COPY . /var/www
WORKDIR /var/www

RUN npm install && \
    npm install -g http-server && \
    npm run build

EXPOSE 80

CMD [ "sh ./pull.sh" ]