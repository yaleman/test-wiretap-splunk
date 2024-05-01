#!/bin/bash

docker run --platform linux/x86_64 \
    -e SPLUNK_START_ARGS=--accept-license \
    -e SPLUNK_PASSWORD=HappyPuppy123 \
    -p 8000:8000 \
    --name splunk \
    --rm -it \
    splunk/splunk:9.2.0
