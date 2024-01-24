FROM node:21-bookworm-slim

ENV TZ="Europe/London"

USER root
 RUN apt update && \
   apt install -y \
   curl \
   unzip \
   gnupg2 \
   && apt-get clean

ARG PARENT_VERSION

COPY . .
RUN npm install

ENTRYPOINT [ "npm", "test" ]
