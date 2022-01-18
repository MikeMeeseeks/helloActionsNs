#!/usr/bin/env bash
node -v

time=$(date)
echo "::set-output name=time::$time"
echo $gitub.ref

cd /usr/local/lib/node_modules/@oracle/suitecloud-cli
npm install

cd "/github/workspace"
pwd
ls
suitecloud account:savetoken --account $INPUT_REALM --authid helloWorld --tokenid $INPUT_TOKEN_ID --tokensecret $INPUT_TOKEN_SECRET

suitecloud project:deploy