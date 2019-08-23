#!/bin/bash

# xhost +,      Removes X11 authentication(?)
# docker run:
#   --rm,       delete container after exit
#   -e,         pass $DISPLAY variable to container
#   -v,         mount X11
#   --net host, couldn't get it working without this
xhost + && \
	docker run \
		--rm \
		-e DISPLAY=$DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		--net host \
		cool-retro-term
