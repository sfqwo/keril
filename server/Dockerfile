FROM node:lts-alpine

WORKDIR /usr/src/app

RUN  chown -R node:node /usr/src/app

COPY package.json ./
COPY --chown=node:node db/ ./db
COPY --chown=node:node src/ ./src
COPY yarn.lock ./

RUN yarn install

USER node
CMD "yarn" "start"