FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=80
ENV PORT=443

EXPOSE 80
EXPOSE 443

CMD [ "npm", "start" ]