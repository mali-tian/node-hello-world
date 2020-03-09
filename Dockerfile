FROM  node:10-alpine

WORKDIR /app

COPY package.json package-lock.json /app/
RUN npm install

COPY . /app

RUN adduser -D appuser
USER appuser

CMD npm run start-dev
