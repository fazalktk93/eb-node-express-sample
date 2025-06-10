# Use official Node.js LTS image
FROM node:20

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire app into the container
COPY . .

# Expose port (based on app's listening port)
EXPOSE 8081

# Start the app
CMD ["npm", "start"]

