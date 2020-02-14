#!/bin/bash

set -e

echo "Build parameters:"
echo "INPUT_DESTINATION_DIR: ${INPUT_DESTINATION_DIR:=_site}"
echo "INPUT_SOURCE_DIR: ${INPUT_SOURCE_DIR:=./}"
echo "INPUT_ADD_NOJEKYLL_TAG: ${ADD_NOJEKYLL_TAG:=true}"

pushd ${INPUT_SOURCE_DIR}
bundle install
popd
bundle exec jekyll build --verbose --destination "${INPUT_DESTINATION_DIR}" --source "${INPUT_SOURCE_DIR}"

if [ $ADD_NOJEKYLL_TAG = true ]
then
echo "Writing ${INPUT_DESTINATION_DIR}/.nojekyll"
touch "${INPUT_DESTINATION_DIR}/.nojekyll"
fi
