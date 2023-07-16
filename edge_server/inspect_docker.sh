#! /usr/bin/env bash

INSPECT_PATH=/workspaces/container-fundamentals/docker_container

mkdir -p $INSPECT_PATH
rm -rf $INSPECT_PATH/*
docker save edge_server:v1 > $INSPECT_PATH/edge_server.tar
tar xf $INSPECT_PATH/edge_server.tar -C $INSPECT_PATH