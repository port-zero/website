#!/bin/bash

set -e

if [[ $CIRCLE_BRANCH == master ]]; then
  echo 'Building for production...'
  hugo
  echo 'Deploying to production...'
  rsync --recursive --delete public/ root@web01.port-ze.ro:/srv/www/port-zero.com/html
elif [[ $CIRCLE_BRANCH == staging ]]; then
  echo 'Building for staging...'
  hugo --baseURL="https://staging.port-zero.com/"
  echo 'Deploying to staging...'
  rsync --recursive --delete public/ root@web01.port-ze.ro:/srv/www/staging.port-zero.com/html
else
  echo 'Building...'
  hugo
fi
