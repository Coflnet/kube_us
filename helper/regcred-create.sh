#!/bin/bash

NAME="regcred"
SERVER="registry.gitlab.com"
USERNAME="admin"
PASSWORD="5qKWuTXNfz4FDDo7noe"
NAMESPACE="default"

kubectl create secret docker-registry $NAME \
    --dry-run \
    --docker-server=$SERVER \
    --docker-username=$USERNAME \
    --docker-password=$PASSWORD \
    --namespace=$NAMESPACE \
    -o yaml  

