#!/bin/sh

NAMES=`ls | grep -v README.md`
for name in $NAMES
do
    cd ./$name

    for dockerfile_name in `ls | grep Dockerfile`
    do
        tag=`echo $dockerfile_name | cut -d'.' -f2-`
        if [ "$tag" = "Dockerfile" ]
        then
            tag="latest"
        fi

        case "$1" in
        build)
            echo "==============================start build $name:$tag"
            docker build -t $DOCKER_USERNAME/$name:$tag -f ./$dockerfile_name .
            ;;
        show)
            echo "==============================start show $name:$tag"
            docker images $DOCKER_USERNAME/$name:$tag
            ;;
        push)
            echo "==============================start push $name:$tag"
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
