# Container image that runs your code
FROM alpine:3.14

#add required packages
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add git
RUN apk add openjdk11
RUN npm install -g @oracle/suitecloud-cli

RUN echo "We are here"

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY deploy.sh /deploy.sh
RUN chmod +x /deploy.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]