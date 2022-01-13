#!/bin/bash

# sample database
docker run -d \
  --name mysql-employees \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=supersecret \
  -v $PWD/data:/var/lib/mysql \
  genschsa/mysql-employees

