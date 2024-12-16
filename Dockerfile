# Use Node.js as the base image
FROM node:21.7.1-alpine

# Set the working directory
WORKDIR /employee-management

# Copy dependency files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Build the app for production using Vite
RUN npm run build

# Expose the port Vite will run on
EXPOSE 3000

# Command to start the app (Vite preview in production mode)
CMD ["npm", "run", "preview"]
