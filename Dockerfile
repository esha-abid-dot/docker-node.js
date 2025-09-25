# Base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json first (better for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app files
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
