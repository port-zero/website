#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ICONS_PATH=$1

cp -f $ICONS_PATH/config.json $DIR/../themes/portzero/static/font/
cp -f $ICONS_PATH/LICENSE.txt $DIR/../themes/portzero/static/font/icons_LICENSE.txt
cp -f $ICONS_PATH/css/icons.css $DIR/../themes/portzero/static/css/
cp -f $ICONS_PATH/font/icons.* $DIR/../themes/portzero/static/font/
