FROM node:10-alpine

WORKDIR /app
COPY package.json package-lock.json /app/

RUN npm install --production
COPY ./dist/ /app/dist/

RUN adduser -D appuser
USER appuser

CMD npm start
