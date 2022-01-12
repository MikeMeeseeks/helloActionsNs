#!/bin/sh -l
node -v
echo "Hello $env.REALM"
time=$(date)
echo "::set-output name=time::$time"