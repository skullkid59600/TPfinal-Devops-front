FROM node:14.15.4-slim

WORKDIR /app

COPY . .
RUN yarn add node-sass
RUN yarn install

EXPOSE 8080/tcp
EXPOSE 8080/udp

CMD ["yarn", "serve"]
