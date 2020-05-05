#!/bin/sh
htpasswd -cb /etc/nginx/.htpasswd $USER $PASSWORD
nginx -g "daemon off;"