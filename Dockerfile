FROM node:22-alpine
WORKDIR /app
RUN addgroup -S app && adduser -S -G app app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY src ./src
COPY contracts ./contracts
COPY migrations ./migrations
USER app
EXPOSE 3000
CMD ["node", "src/server.js"]
