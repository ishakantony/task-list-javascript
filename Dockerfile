FROM node:12-alpine as builder

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

FROM nginx:alpine

COPY --from=builder /app/dist/. /usr/share/nginx/html