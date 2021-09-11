#!/bin/bash

docker run gcr.io/kaniko-project/executor:latest \
    --context=git://github.com/Coflnet/hypixel-react.git#refs/heads/master \
    --context-sub-path=. \
    --no-push
    #--destination=flou21/example-frontend