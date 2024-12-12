# Use the official Node.js 18 image as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json files to the container
# (This step is important if you have dependencies to install)
COPY package*.json ./

# Install Node.js dependencies (skip this step if there are no dependencies)
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the application will run on
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]

