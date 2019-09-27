#!/bin/bash

set -e

echo "Build parameters:"
echo "INPUT_DESTINATION_DIR: ${INPUT_DESTINATION_DIR:=_site}"
echo "INPUT_ADD_NOJEKYLL_TAG: ${ADD_NOJEKYLL_TAG:=true}"

bundle install
bundle exec jekyll build --verbose --destination "${INPUT_DESTINATION_DIR}"

if [ $ADD_NOJEKYLL_TAG = true ]
then
echo "Writing ${INPUT_DESTINATION_DIR}/.nojekyll"
touch "${INPUT_DESTINATION_DIR}/.nojekyll"
fi
