#!/usr/bin/env bash
node -v

cd /usr/local/lib/node_modules/@oracle/suitecloud-cli
npm install

cd "/github/workspace"

if [ $INPUT_BRANCH == 'main' ] 
then
    echo "WARNING DEPLOYING TO $INPUT_BRANCH"
else
    echo "Deploying to $INPUT_BRANCH"
fi

suitecloud account:savetoken --account $INPUT_REALM --authid helloWorld --tokenid $INPUT_TOKEN_ID --tokensecret $INPUT_TOKEN_SECRET