#!/bin/bash

# This needs to be reworked to use --volumes-from languages

docker run --rm --volume=/var/www/cyber-dojo/languages:/languages rails:4.1 ./languages/docker_list_all_images.rb
