#!/bin/sh
crontab -l | { cat; echo "*/5 * * * * /duckdns/duck.sh >/dev/null 2>&1"; } | crontab -
