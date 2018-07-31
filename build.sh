#!/usr/bin/sh
set -e
hugo
if [[ $(git rev-parse --abbrev-ref HEAD) == master ]]; then
  scp -r public/* root@web01.port-ze.ro:/srv/www/port-zero.com/html
else
  scp -r public/* root@web01.port-ze.ro:/srv/www/staging.port-zero.com/html
fi
