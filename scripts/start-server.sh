#!/bin/bash
which npm

echo $USER

cd /var/frontend/

rm -r node_modules/

npm install --global yarn
yarn install

pwd

pm2 describe app > /dev/null
RUNNING=$?

if [ "${RUNNING}" -ne 0 ]; then
  pm2 start yarn --name app -- start
else
  pm2 reload app
fi;