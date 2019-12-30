#!/bin/sh -e

APP=$1

if [ ! -d ./${APP}/package.json ]
then
  create-react-app ${APP}
fi

cd ${APP}
yarn start
