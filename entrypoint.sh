#!/bin/sh

echo "Build parameters:"
echo "Destination directory: ${INPUT_DESTINATION_DIR}"

bundle install
bundle exec jekyll build --verbose --destination "${INPUT_DESTINATION_DIR-_site}"
touch "${INPUT_DESTINATION_DIR-site}/.nojekyll"
