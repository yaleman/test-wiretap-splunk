#!/bin/bash

docker run --platform linux/x86_64 \
    -e SPLUNK_START_ARGS=--accept-license \
    -e SPLUNK_PASSWORD=HappyPuppy123 \
    -p 8000:8000 \
    --mount "type=bind,src=./default.yml,target=/tmp/defaults/default.yml" \
    --rm -it \
    splunk/splunk:9.2.0
