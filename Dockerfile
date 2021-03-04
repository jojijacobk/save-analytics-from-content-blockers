FROM alpine

WORKDIR /app

RUN apk add --update nodejs

EXPOSE 80

ENV APP__ENV_NAME=prod
ENV APP__STRIPPED_PATH=/gtmproxy
CMD node -r esm src/api.js