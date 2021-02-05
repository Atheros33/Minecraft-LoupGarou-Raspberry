#!/bin/sh

docker-compose pull minecraft
docker-compose build && docker-compose up
