FROM node:lts-alpine
WORKDIR /usr/src/app
COPY package.json ./
COPY --chown=node:node db/ /usr/src/app/db
COPY --chown=node:node src/ /usr/src/app/src
RUN npm install
USER node
CMD "npm" "start"