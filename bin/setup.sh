#!/bin/bash

wp-env run cli wp theme activate twentytwentythree
wp-env run cli wp rewrite structure /%postname%
wp-env run cli wp option update blogname "WP Local Environment"
wp-env run cli wp option update blogdescription "Local development environment for our plugins."
