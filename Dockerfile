FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install -g n8n

COPY . .

EXPOSE 5678

CMD ["n8n"]
