FROM node:8

WORKDIR ~/Online-Chess

COPY package*.json ./

RUN apt update
RUN apt full-upgrade --yes
RUN apt install --yes mongodb
RUN npm install

COPY . .

EXPOSE 4000

CMD service mongodb start ; node app.js
