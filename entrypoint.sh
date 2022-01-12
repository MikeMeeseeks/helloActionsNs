#!/usr/bin/env bash
node -v
echo "Hello $REALM"
time=$(date)
echo "::set-output name=time::$time"