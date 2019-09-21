#!/bin/sh

bundle install
bundle exec jekyll build --verbose --destination "${INPUT_DESTINATION_DIR}"
