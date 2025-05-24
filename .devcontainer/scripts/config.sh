#!/usr/bin/env bash

cd /opt/librenms \
&& source /opt/python/bin/activate \
&& ./scripts/composer_wrapper.php install --no-dev \
&& sed -i 's/#DB_HOST=/DB_HOST=db/g' .env \
&& sed -i 's/#DB_DATABASE=/DB_DATABASE=librenms/g' .env \
&& sed -i 's/#DB_USERNAME=/DB_USERNAME=librenms/g' .env \
&& sed -i 's/#DB_PASSWORD=/DB_PASSWORD=mysecretpassword/g' .env \
&& ./lnms migrate --seed --no-interaction --force \
&& composer config --global repositories.kafkastore-plugin '{"type": "path", "url": "/workspaces/librenms-plugin-project/librenms-kafkastore-plugin", "symlink": true}' \
&& ./lnms plugin:add oldemarjesus/librenms-kafkastore-plugin @dev \

exit 0