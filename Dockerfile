FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --omit=dev
COPY src ./src
COPY .env.example README.md render.yaml ./
ENV NODE_ENV=production
EXPOSE 3000
CMD ["npm", "start"]
