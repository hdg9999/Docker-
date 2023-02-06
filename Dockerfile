FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY node_modules .

COPY index.html .

ENTRYPOINT [ "npm", "start" ]