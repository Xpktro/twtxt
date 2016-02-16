#!/bin/sh

if [ "$1" == "pre" ]; then
    cd $(dirname $0) && git pull
elif [ "$1" == "post" ]; then
    cd $(dirname $0) && git add . && git commit -m "updated `date`" && git push
else 
    echo "Unsupported argument."
fi

