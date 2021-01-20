FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=443

EXPOSE 443

CMD [ "npm", "start" ]