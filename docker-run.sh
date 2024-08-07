#!/bin/bash

docker run -d --name="ownCloud" \
-p 8443:443 \
-e TZ="Europe/Amsterdam" \
-e PUID="99" \
-e PGID="100" \
-e PHP_VERS="7.4" \
-e DB_PASS="owncloud" \
-v "/mnt/cache/appdata/ownCloud":"/config":rw \
-v "/mnt/cache/appdata/ownCloud/data":"/data":rw \
--privileged \
genie137/owncloud
