FROM node:18.12.1

# Create app directory
WORKDIR /usr/src/app

# Copy app
COPY package*.json ./

# Install
RUN npm install

COPY . .

# Docker Run Command
EXPOSE 8080
CMD [ "node", "server.js" ]