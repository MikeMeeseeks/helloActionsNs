#!/usr/bin/env bash
node -v
echo "Hello World $1"
time=$(date)
echo "::set-output name=time::$time"

suitecloud account:savetoken --account $INPUT_REALM --authid helloWorld --tokenid $INPUT_TOKEN_ID --tokensecret $INPUT_TOKEN_SECRET

