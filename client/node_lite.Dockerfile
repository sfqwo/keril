FROM node:lts-alpine
WORKDIR /usr/src/app

ENV REACT_APP_API_URL 'http://example/'
ENV REACT_APP_FOO '123'

COPY package.json ./
COPY --chown=node:node public/ ./public
COPY --chown=node:node src/ ./src
COPY --chown=node:node node_modules/ ./node_modules
USER node
CMD "yarn" "start"