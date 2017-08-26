#!/usr/bin/env bash

docker build -t kube-lego-arm-build _build
id=$(docker create kube-lego-arm-build)
docker cp $id:/go/src/github.com/jetstack/kube-lego/_build/kube-lego-linux-arm .
docker rm -v $id
docker build -t jonaseck/kube-lego-arm:0.1.5 .
docker push jonaseck/kube-lego-arm:0.1.5
