#!/bin/bash

rm /root/.flexget/.config-lock
/usr/bin/flexget --loglevel info daemon start
