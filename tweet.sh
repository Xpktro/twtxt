#!/bin/sh
cd $(dirname $0) && git add . && git commit -m "updated `date`" && git push
