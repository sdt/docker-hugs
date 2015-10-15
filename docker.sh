#!/bin/bash

IMAGE_NAME=sdt4docker/hugs
CONTAINER_NAME=hugs

case $1 in

    build)
        docker build -t $IMAGE_NAME .
        ;;

    run)
        shift
        docker run --rm -v $PWD:/hugs -ti --name $CONTAINER_NAME \
                   $IMAGE_NAME "$@"
        ;;

    pull)
        docker pull $IMAGE_NAME
        ;;

    *)
        echo "usage: $0 [build|run|make]"
        exit 1

        ;;

esac

