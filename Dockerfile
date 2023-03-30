#Base Image node:12.18.4-alpine
FROM node:12.18.4-alpine

ARG $HOME:/home/jenkins

#Set working directory to /app
WORKDIR /app


#Set PATH /app/node_modules/.bin
ENV PATH /app/node_modules/.bin:$PATH


#Run npm install command
RUN npm install

EXPOSE 3000

#Start the app
CMD ["node", "./src/server.js"]
