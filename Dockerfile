FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY lib ./lib
COPY server.js ./

EXPOSE 5001

USER node

CMD ["node", "server.js"]
