FROM node:22-alpine

WORKDIR /usr/src/www

RUN apk update && \
    apk add --no-cache tzdata

ENV TZ America/Sao_Paulo
ENV NODE_ENV production

EXPOSE 3000

CMD ["node", "index.js"]