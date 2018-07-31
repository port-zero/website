#!/usr/bin/sh
set -e
if [[ $(git rev-parse --abbrev-ref HEAD) == master ]]; then
  hugo
  scp -r public/* root@web01.port-ze.ro:/srv/www/port-zero.com/html
else
  hugo --config config.staging.toml
  scp -r public/* root@web01.port-ze.ro:/srv/www/staging.port-zero.com/html
fi
