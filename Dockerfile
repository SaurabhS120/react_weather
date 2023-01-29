# Fetching the latest node image on alpine linux
FROM ubuntu:latest AS development

RUN apt-get update && apt-get install -y npm

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /user/app/src/my-app

# Installing dependencies
COPY ./my-app/package.json /user/app/src/my-app
RUN npm install

# Copying all the files in our project
COPY ./my-app /user/app/src/my-app

# Starting our application
CMD npm start