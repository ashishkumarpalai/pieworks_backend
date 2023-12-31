# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR ./

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Expose the port your application will run on
EXPOSE 3000

# Start the Node.js application
CMD [ "npm", "start" ]
