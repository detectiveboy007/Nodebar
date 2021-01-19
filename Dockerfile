#FROM node:12.18.4
#FROM node:alpine
FROM node:latest
WORKDIR /app
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install
 
COPY . .
 EXPOSE 80
CMD [ "npm", "start" ]
 #CMD ["npm","run","dev"]
 #EXPOSE 443

 #CMD [ "node", "app.js" ]
#CMD [ "node", "www.js" ]
