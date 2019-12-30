#!/bin/sh -e

APP=$1

if [ ! -f ${APP}/package.json ]
then
  create-react-app ${APP}
fi

cd ${APP}
yarn start
