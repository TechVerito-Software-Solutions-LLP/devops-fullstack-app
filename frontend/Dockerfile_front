# Use an official Node.js runtime as a parent image
FROM node:14.17.0

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install frontend dependencies
RUN npm install

# Copy the rest of the frontend source code to the working directory
COPY . ./

# Build the React application for production
RUN npm run build

# Expose port 3000 for the React app
EXPOSE 3000

# Define the command to start the React app
CMD ["npm", "start"]
