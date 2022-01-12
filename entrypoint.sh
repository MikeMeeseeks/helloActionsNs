#!/usr/bin/env bash
node -v
echo "Hello World $1"
time=$(date)
echo "::set-output name=time::$time"
echo "Docker Build Complete"