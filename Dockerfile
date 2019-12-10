FROM node:10-alpine
WORKDIR /work
COPY package.json package-lock.json /work/
RUN npm install
COPY . /work
RUN npm run build

FROM  node:10-alpine
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm install --production
COPY --from=0 /work/dist/ /app/dist/
RUN adduser -D appuser
USER appuser
CMD npm start
