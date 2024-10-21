FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.ntrwp.mongodb.net
ENV MONGODB_USERNAME gh_docker_test
ENV MONGODB_PASSWORD yOnIgcqIfEdT1Cb6

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]