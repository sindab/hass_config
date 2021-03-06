#!/bin/bash

cd /srv/hass/cfg
source /srv/hass/bin/activate
/srv/hass/bin/hass -c /srv/hass/cfg --script check_config
echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG

git add .
git status
git commit -m "${CHANGE_MSG}"
git push origin master

exit
