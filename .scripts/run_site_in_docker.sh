#!/bin/bash

set -e

export JEKYLL_VERSION=3.8

echo "Running site locally in docker at http://localhost:4000"

(
    docker run -it --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -p 4000:4000 jekyll/jekyll:${JEKYLL_VERSION} jekyll serve --force_polling --drafts
)
