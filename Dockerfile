FROM node:14-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production

COPY . .

RUN ls -l

EXPOSE 3000

CMD [ "node", "main" ]
