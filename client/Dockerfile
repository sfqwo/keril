FROM node:lts-alpine AS build-stage

WORKDIR /user/share/app
COPY package.json ./
COPY ./src ./src
COPY ./public ./public

RUN npm install && npm run build


FROM nginx:1.21-alpine
WORKDIR /usr/share/nginx/html
COPY --from=build-stage /user/share/app/build/ ./

#
#FROM node:lts-alpine
#WORKDIR /usr/src/app
#COPY package.json ./
#COPY --chown=node:node public/ /usr/src/app/public
#COPY --chown=node:node src/ /usr/src/app/src
#RUN npm install
#RUN npm config set unsafe-perm true
#RUN chown -R node /usr/src/app/node_modules
#USER node
#CMD "npm" "start"