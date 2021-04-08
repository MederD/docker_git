#!/bin/bash

# Remove any existing httpd data
rm -rf /run/httpd/* /tmp/httpd*

# Start Apache server in foreground
exec /usr/sbin/apachectl -DFOREGROUND




