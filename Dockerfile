FROM node:18-alpine

RUN apk add --no-cache ffmpeg python3 make g++

RUN npm install -g n8n

CMD sh -c "N8N_PORT=${PORT:-5678} N8N_HOST=0.0.0.0 n8n start"
