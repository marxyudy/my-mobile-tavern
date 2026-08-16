FROM node:18-alpine
WORKDIR /app
RUN npx degit SillyTavern/SillyTavern#main .
RUN npm install --omit=dev
EXPOSE 8000
CMD ["node", "server.js", "--listen"]
