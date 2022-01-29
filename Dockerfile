# Dockerfile  
FROM node:17  
WORKDIR /nodejs_blog 
COPY package*.json ./ 
RUN npm install
RUN npm install --only=dev
#express -g nodemon --save-dev morgan
COPY . .  
EXPOSE 3000  
CMD npm start

# syntax=docker/dockerfile:1

# FROM node:17
# ENV NODE_ENV=production
# WORKDIR /app
# COPY ["package.json", "package-lock.json*", "./"]
# RUN npm install --production
# COPY . .
# EXPOSE 3000  
# CMD [ "npm", "start"]
