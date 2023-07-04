FROM node:18

LABEL org.opencontainers.image.source https://github.com/rjnpnigrhi/maverick-ai-training-sample-nodejs-app#readme

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --omit=dev

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "index.js" ]