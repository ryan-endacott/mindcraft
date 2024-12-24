FROM node:20

WORKDIR /app

# Copy package.json and lockfile first (so Docker can cache installs)
COPY package*.json ./

# Install dependencies
RUN npm install

# Now copy the rest of the Mindcraft code
COPY . .

# Default command
CMD ["node", "main.js"]
