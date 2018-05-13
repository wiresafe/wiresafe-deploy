#!/bin/bash -e
cp /wiresafe/wordpress/. /bitnami/wordpress/ -R
mysql -h $MARIADB_HOST -D$WORDPRESS_DATABASE_NAME -u$WORDPRESS_DATABASE_NAME -p$WORDPRESS_DATABASE_PASSWORD  < /wiresafe/database/reset-database.sql
