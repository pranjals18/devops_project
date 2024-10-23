# Use the official Node.js image as the base
FROM node:21

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the app's source code to the working directory
COPY . .

# Build the Next.js app
RUN npm run build

# Expose the port that the Next.js app runs on (Next.js uses 3000 by default)
EXPOSE 3000

# Start the app in production mode
CMD ["npm", "start"]