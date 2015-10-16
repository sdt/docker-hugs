#!/bin/bash

IMAGE=sdthirlwall/hugs

case $1 in

    build)
        docker build -t $IMAGE .
        ;;

    run)
        shift
        docker run --rm -v $PWD:/hugs -ti $IMAGE "$@"
        ;;

    push)
        docker push $IMAGE
        ;;

    *)
        echo "usage: $0 [build|run|push]"
        exit 1

        ;;

esac
