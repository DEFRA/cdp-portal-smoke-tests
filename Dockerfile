FROM node:21-alpine

ENV TZ="Europe/London"

USER root

RUN apk add --no-cache \
    openjdk17-jre-headless \
    curl \
    aws-cli

WORKDIR /app
RUN curl -q -o BrowserStackLocal https://www.browserstack.com/local-testing/downloads/binaries/BrowserStackLocal-alpine

COPY . .
RUN npm install

ENTRYPOINT [ "./entrypoint.sh" ]
