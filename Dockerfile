# Container image that runs your code
FROM alpine:3.14

#add required packages
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add git
RUN apk add openjdk11
RUN npm install -g @oracle/suitecloud-cli

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

