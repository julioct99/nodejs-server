# Using Node 10 as base image
FROM node:14.9.0-stretch-slim

# Create app directory
WORKDIR /usr/src/app

# Give permissions to the user "node"
RUN chown -R node:node /usr/src/app

# Change user to avoid running the container as root (security)
USER node

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY --chown=node:node ./app/package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY --chown=node:node ./app .

EXPOSE 8080
CMD [ "node", "app.js" ]