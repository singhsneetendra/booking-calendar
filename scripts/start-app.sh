#!/bin/bash
set -x

# Populate database - 
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$DBHOST $MYSQL_DATABASE < /tmp/schema-create.sql

#Starting nodejs service
node server.js
