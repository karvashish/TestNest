FROM node:14-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

RUN ls -l /usr/src/app/dist

COPY /dist .

RUN ls -l

EXPOSE 3000

CMD [ "node", "main" ]
