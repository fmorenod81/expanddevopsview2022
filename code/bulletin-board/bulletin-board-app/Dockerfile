FROM node:10.15-stretch AS builder

WORKDIR /src
COPY package.json .
RUN npm install

# app image
FROM node:10.15.3-alpine 

EXPOSE 8080
CMD [ "node", "server.js" ]
USER node

WORKDIR /app
COPY --from=builder /src/node_modules/ /app/node_modules/
COPY . .