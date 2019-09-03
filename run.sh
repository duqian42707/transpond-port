#!/bin/sh

/opt/replace.sh

java -jar transpond.jar 80 $TARGET_HOST $TARGET_PORT

echo 'started'
