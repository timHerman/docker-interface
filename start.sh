#!/bin/bash
mkdir -p /var/www/htdocs
mkdir -p /var/www/logs
chown www-data.www-data /var/www/ -Rf

echo >&2 "MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}"
echo >&2 "MYSQL_LOCAL_USER=${MYSQL_LOCAL_USER}"
echo >&2 "MYSQL_LOCAL_DATABASE=${MYSQL_LOCAL_DATABASE}"
echo >&2 "MYSQL_LOCAL_PASSWORD=${MYSQL_LOCAL_PASSWORD}"

# start all the services
/usr/local/bin/supervisord -n
