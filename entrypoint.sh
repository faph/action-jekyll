#!/bin/bash

set -e

echo "Build parameters:"
echo "INPUT_DESTINATION_DIR: ${INPUT_DESTINATION_DIR:=_site}"
echo "INPUT_SOURCE_DIR: ${INPUT_SOURCE_DIR:=./}"
echo "INPUT_ADD_NOJEKYLL_TAG: ${ADD_NOJEKYLL_TAG:=true}"

DESTINATION="`pwd`/${INPUT_DESTINATION_DIR}"
cd INPUT_SOURCE_DIR
bundle install
bundle exec jekyll build --verbose --destination "${DESTINATION}"

if [ $ADD_NOJEKYLL_TAG = true ]
then
echo "Writing ${INPUT_DESTINATION_DIR}/.nojekyll"
touch "${DESTINATION}/.nojekyll"
fi
