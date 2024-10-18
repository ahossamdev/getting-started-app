FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install && npm cache clean --force
ENTRYPOINT ["node"]
CMD ["src/index.js"]
EXPOSE 3000
