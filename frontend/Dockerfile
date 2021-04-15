FROM node:14.4.0-alpine

ARG WORKDIR
ARG BACKEND_BASE_URL

ENV BACKEND_BASE_URL      $BACKEND_BASE_URL
ENV TZ                    Asia/Tokyo

WORKDIR ${WORKDIR}

COPY package*.json ./

RUN apk update && \
    apk upgrade && \
    apk add --no-cache make gcc g++ python && \
    yarn install && \
    rm -rf /var/cache/apk/*

COPY . .

# CMD ["yarn", "dev"]
CMD ["yarn", "start"]