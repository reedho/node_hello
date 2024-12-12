# Use the official Node.js 18 image as a base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json files to the container
# (This step is important if you have dependencies to install)
COPY package*.json ./

# Install Node.js dependencies (skip this step if there are no dependencies)
RUN npm install --omit=dev

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the application will run on
EXPOSE 3000

ENV PG_USER=user
ENV PG_PASWORD=
ENV PG_HOST=host.docker.internal
ENV PG_DATABASE=simple_node_app
ENV PG_PORT=5432

# Command to run the application
CMD ["node", "app.js"]

