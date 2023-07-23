#! /usr/bin/env bash

docker run -d -p 8000:80 --restart on-failure edge_server:v1
