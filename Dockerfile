FROM node:18-slim
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com /app
WORKDIR /app
RUN npm install --only=prod
EXPOSE 8000
CMD ["node", "server.js", "--listen"]
