#vars
IMAGENAME=vss

VERSION= 1.0

CONTAINERNAME= vss-container

HTTP_PORT= 8080

RTMP_PORT= 1935

#edit and set your own source path to bind container volume
LOCAL_VOLUME_PATH:= C:/Users/91638/Videos/vss-playbacks

.PHONY: help build push run rmi rm start stop all

build:
	    @docker build -t ${IMAGENAME}:${VERSION} .

run:
	    @docker run -d -v ${LOCAL_VOLUME_PATH}:/usr/local/nginx/stream_data/playbacks -p ${HTTP_PORT}:${HTTP_PORT} -p ${RTMP_PORT}:${RTMP_PORT} --name ${CONTAINERNAME} ${IMAGENAME}:${VERSION}
 
start:
	    @docker start ${CONTAINERNAME}

stop:
	    @docker stop ${CONTAINERNAME}

rmi:
	    @docker rmi ${IMAGENAME}:${VERSION}

rm:
	    @docker rm ${CONTAINERNAME}

all: build run

quit: stop rm rmi