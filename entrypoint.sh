#!/bin/sh -l
node -v
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"