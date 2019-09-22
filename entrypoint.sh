#!/bin/bash

echo "Build parameters:"
echo "INPUT_DESTINATION_DIR: ${INPUT_DESTINATION_DIR:=_site}"

bundle install
bundle exec jekyll build --verbose --destination "${INPUT_DESTINATION_DIR}"
touch "${INPUT_DESTINATION_DIR}/.nojekyll"
