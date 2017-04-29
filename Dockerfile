FROM node:7.9.0-alpine

ADD . /app  

WORKDIR /app  

RUN npm install

ENV NODE_ENV=development

EXPOSE 3000

CMD ["./node_modules/nodemon/bin/nodemon.js", "--inspect=5858", "index.js"]
