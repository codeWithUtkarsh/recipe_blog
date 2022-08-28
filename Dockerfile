FROM node:alpine
WORKDIR /usr/src/app
copy package*.json .
RUN npm ci
copy . .
CMD ["npm", "start"]