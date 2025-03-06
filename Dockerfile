# Pull the official n8n Docker image
FROM n8nio/n8n

# Copy JSON file into the container
COPY ai-youtube-automation.json /data/ai-youtube-automation.json

# Start n8n
CMD ["n8n", "start"]
