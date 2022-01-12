#!/usr/bin/env bash
node -v
echo "Hello World $1"
time=$(date)
echo "::set-output name=time::$time"
echo "My Test $INPUT_REALM"
echo "Docker Build Complete"

suitecloud 