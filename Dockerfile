# # Use the official Node.js image.
# FROM node:14

# # Set the working directory in the container.
# WORKDIR /usr/src/index

# # Copy package.json and package-lock.json.
# COPY . . 

# # Install dependencies.
# RUN npm install

# # Copy the rest of the application code.
# COPY . .

# # Expose the application port.
# EXPOSE 3000

# # Command to run the application.
# CMD [ "node", "src/index.js" ]

FROM node:18-alpine
WORKDIR /index
COPY . .
RUN yarn install --production
EXPOSE 3000
CMD ["node","src/index.js"]