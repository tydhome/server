FROM node:24-alpine

WORKDIR /tmp

COPY index.js package.json index.html ./

EXPOSE 80

RUN apk update && apk add --no-cache bash openssl curl &&\
    chmod +x index.js &&\
    npm install

CMD ["node", "index.js"]
