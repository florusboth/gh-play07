FROM node:22

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.8youmjs.mongodb.net
ENV MONGODB_USERNAME gha-florus
ENV MONGODB_PASSWORD xxxxx

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]