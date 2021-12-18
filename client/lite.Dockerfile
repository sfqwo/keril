FROM node:lts-alpine AS build-stage

WORKDIR /usr/src/app

ARG PATH_ENV
#add ".env" file before build process.After build env cannot edit
COPY $PATH_ENV ./
#echo file
RUN cat ./.env

COPY ./build ./build
RUN ls -ls

FROM nginx:1.21-alpine
WORKDIR /usr/share/nginx/html
COPY --from=build-stage /usr/src/app/build ./