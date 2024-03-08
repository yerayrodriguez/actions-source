FROM node:16.20.0-alpine3.18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY src ./src
COPY tsconfig.json ./

EXPOSE 8080

# #! Needed to generate standalone image
ENTRYPOINT [ "npm", "run", "init" ]