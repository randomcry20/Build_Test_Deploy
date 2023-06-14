# Use a base image with Node.js pre-installed
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install application dependencies
RUN npm install --production

# Copy the application source code
COPY . .

# Expose the port the application listens on
EXPOSE 3000

# Start the application
CMD [ "node", "index.js" ]
