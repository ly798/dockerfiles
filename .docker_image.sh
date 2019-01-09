#!/bin/sh

NAMES=`ls | grep -v README.md`
for name in $NAMES
do
    cd ./$name

    for dockerfile_name in `ls | grep Dockerfile`
    do
        tag=`echo $dockerfile_name | awk -F'.' '{print $2}'`
        if [ "$tag" = "" ]
        then
            tag="latest"
        fi

        case "$1" in
        build)
            docker build -t $DOCKER_USERNAME/$name:$tag -f ./$dockerfile_name .
            ;;
        show)
            docker images $DOCKER_USERNAME/$name:$tag
            ;;
        push)
            docker push $DOCKER_USERNAME/$name:$tag
            ;;
        *)
            echo 'param error'
            exit 1
            ;;
        esac
    done

    cd ../
done