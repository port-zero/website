#!/bin/bash

set -e

if [[ $CIRCLE_BRANCH == master ]]; then
  echo 'Building for production...'
  hugo
  echo 'Deploying to production...'
  scp -r public/* root@web01.port-ze.ro:/srv/www/port-zero.com/html
elif [[ $CIRCLE_BRANCH == staging ]]; then
  echo 'Building for staging...'
  hugo --config config.staging.toml
  echo 'Deploying to staging...'
  scp -r public/* root@web01.port-ze.ro:/srv/www/staging.port-zero.com/html
else
  echo 'Building...'
  hugo
fi
