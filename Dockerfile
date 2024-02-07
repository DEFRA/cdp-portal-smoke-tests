FROM node:21-bookworm-slim

ENV TZ="Europe/London"

USER root

RUN apt update && \
   apt install -y \
   curl \
   unzip \
   gnupg2 \
   awscli \
   openjdk-17-jre-headless \
   && apt-get clean

ARG PARENT_VERSION

WORKDIR /app

COPY . .
RUN npm install

ENTRYPOINT [ "npm", "run", "test:publish" ]
