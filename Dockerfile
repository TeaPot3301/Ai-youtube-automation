# Base Image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Install n8n globally (the missing nigga 💀)
RUN npm install -g n8n

# Copy the entire project
COPY . .

# Expose Port 5678 (n8n default port)
EXPOSE 5678

# Run n8n server
CMD ["n8n", "start"]
