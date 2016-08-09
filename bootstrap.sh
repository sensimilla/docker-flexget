#!/bin/ash

rm -f /root/.flexget/.config-lock
/usr/bin/flexget --loglevel info daemon start
