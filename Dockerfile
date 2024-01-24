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

COPY certificates/cdp-ca-certs.crt /usr/local/share/ca-certificates/cdp-ca-certs.crt
ENV NODE_EXTRA_CA_CERTS=/usr/local/share/ca-certificates/cdp-ca-certs.crt

COPY . .
RUN npm install

ENTRYPOINT [ "npm", "test" ]
