#!/bin/sh
docker -p 6502:6502 run --rm --link postgres:postgres --entrypoint="/bin/bash" -e "HOST_UID=`id -u`" -e "HOST_USER=$USER" -v $HOME:/var/home:rw -i -t ruimo/df-ub1404-django --rcfile /profile -i
