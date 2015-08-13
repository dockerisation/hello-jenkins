FROM node:latest
MAINTAINER mikegcoleman@gmail.com

# set default workdir
WORKDIR /usr/src

# Add package.json to allow for caching
COPY package.json /usr/src/package.json

# Install app dependencies
RUN npm install

# Bundle app source
COPY app.js /usr/src/
COPY test /usr/src/test
COPY script /usr/src/script

EXPOSE 5000
CMD ["node","app.js"]
