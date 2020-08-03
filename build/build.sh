#!/bin/sh

SCRIPTPATH=$(cd $(dirname $0);pwd -P)
cd $SCRIPTPATH
echo Script path: $SCRIPTPATH
echo $# arguments $1 $2 provided

if [[ $# -ne 2 ]] ; then
  echo '2 arguments (repo tag) required'
  exit 1
fi

docker rmi $(docker images -a -f 'dangling=true' -q)
docker build -t keguigong/hello-django:$2 -f build/Dockerfile --no-cache .
docker push keguigong/hello-django:$2
