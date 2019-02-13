#!/bin/bash

set -e

if [[ $CIRCLE_BRANCH == master ]]; then
  echo 'Building for production...'
  hugo
  echo 'Deploying to production...'
  scp -i ~/.ssh/id_rsa -o "StrictHostKeyChecking no" -r public/* root@web01.port-ze.ro:/srv/www/port-zero.com/html
elif [[ $CIRCLE_BRANCH == staging ]]; then
  echo 'Building for staging...'
  hugo --baseURL="https://staging.port-zero.com/"
  echo 'Deploying to staging...'
  scp -i ~/.ssh/id_rsa -o "StrictHostKeyChecking no" -r public/* root@web01.port-ze.ro:/srv/www/staging.port-zero.com/html
else
  echo 'Building...'
  hugo
fi
