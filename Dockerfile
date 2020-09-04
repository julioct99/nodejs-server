# Using Node 14.9 (slim) as base image
FROM node:14.9-slim

# Set the NODE_ENV variable to production mode
ENV NODE_ENV production

# Open port 8080
EXPOSE 8080

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

# Run npm start script
CMD [ "npm", "start" ]