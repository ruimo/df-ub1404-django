#!/bin/sh
docker run -p 9080:9080 --rm --link postgres:postgres --entrypoint="/bin/bash" -e "HOST_UID=`id -u`" -e "HOST_USER=$USER" -v $HOME:/var/home:rw -i -t ruimo/df-ub1404-django --rcfile /profile -i
