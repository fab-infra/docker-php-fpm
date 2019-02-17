#!/bin/sh -ex

exec /usr/sbin/php-fpm --nodaemonize --force-stderr --fpm-config /etc/php7/fpm/php-fpm.conf
