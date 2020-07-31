#!/bin/sh

SCRIPTPATH=$(cd $(dirname $0);pwd -P)
cd $SCRIPTPATH
echo Script path: $SCRIPTPATH
echo $# arguments $1 $2 provided

if [[ $# -ne 2 ]] ; then
  echo '2 arguments (repo tag) required'
  exit 1
fi

cd $SCRIPTPATH
cd ../
docker build -t keguigong/$1/hello-django:$2 .
docker push keguigong/perd/$1/hello-django:$2
