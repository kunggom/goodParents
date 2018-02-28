FROM node:alpine

COPY ./build/* /var/www/build/
COPY server.js /var/www/
WORKDIR /var/www/
RUN npm init -y && npm install express

EXPOSE ${PORT}
ENTRYPOINT [ "node", "server.js" ]
