# Use official Node.js image
FROM node:18-slim

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy app source
COPY . .

# Expose port
EXPOSE 8080

# Run app
CMD ["npm", "start"]
