#!/bin/bash

echo ${TITLE:=Hello} > /var/www/html/index.html

nginx -g "daemon off;"
