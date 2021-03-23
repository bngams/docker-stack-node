# specify the node base image with your desired version node:<version>
FROM node:14.16-alpine
# 
WORKDIR nodeapp/
COPY server.js .
COPY package.json .
RUN npm install
# replace this with your application's default port
EXPOSE 3000
CMD ["npm", "start"]
