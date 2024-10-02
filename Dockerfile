# Use the official Node.js 20.5.0 image as the base image
FROM node:20.5.0

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files to the working directory
COPY . .

# Expose the port the application will run on
EXPOSE 3000

# Set the command to run the application
CMD ["npm", "start"]
