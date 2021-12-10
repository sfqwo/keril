FROM node:lts-alpine AS build-stage

WORKDIR /user/share/app
COPY package.json ./
COPY ./src ./src
COPY ./public ./public

RUN npm install && npm run build


FROM nginx:1.21-alpine
WORKDIR /usr/share/nginx/html
COPY --from=build-stage /user/share/app/build/ ./