#FROM node:12.18.4
FROM node:alpine
WORKDIR /app
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install
 
COPY . .
 EXPOSE 80
 #EXPOSE 443
 CMD [ "npm", "start" ]
 #CMD [ "node", "app.js" ]
#CMD [ "node", "www.js" ]
