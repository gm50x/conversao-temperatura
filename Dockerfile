FROM node:14-alpine3.14

WORKDIR /app
COPY ./src/package*.json .
RUN npm ci
COPY ./src .
EXPOSE 8080
CMD ["node", "./server"]