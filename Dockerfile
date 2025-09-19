# 1️⃣ Use an official Node.js image
FROM node:22-alpine

# 2️⃣ Set working directory inside the container
WORKDIR /app

# 3️⃣ Copy package.json first (better for caching layers)
COPY package*.json ./

# 4️⃣ Install dependencies
RUN npm install

# 5️⃣ Copy the rest of the app
COPY . .

# 6️⃣ Expose the port from .env (default to 3000)
EXPOSE 3000

# 7️⃣ Start the app
CMD ["node", "server.js"]
