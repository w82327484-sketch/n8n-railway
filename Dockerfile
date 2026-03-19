FROM node:18-alpine

RUN apk add --no-cache ffmpeg python3 make g++

RUN npm install -g n8n

ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

EXPOSE 5678

CMD ["npx", "n8n"]
