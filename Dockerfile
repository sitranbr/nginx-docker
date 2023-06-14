FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Bind the port
EXPOSE 3080

# Define the command to run the app
CMD [ "npm", "start" ]
