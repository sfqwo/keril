FROM node:lts-alpine AS build-stage

WORKDIR /usr/src/app

ARG PATH_ENV

COPY package.json ./
COPY ./src ./src
COPY ./public ./public
COPY $PATH_ENV ./yarn.lock ./
#add ".env" file before build process.After build env cannot edit

#echo file
RUN cat .env  && ls -l
RUN yarn install --ignore-platform && yarn run build && ls -l

FROM nginx:1.21-alpine
WORKDIR /usr/share/nginx/html
COPY --from=build-stage /usr/src/app/build/ ./