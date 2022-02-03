#!/bin/bash
set -xo pipefail

FILE=`date +"%Y%m%d-asv-output.txt"`
COMMIT_MSG=`date +"%Y%m%d new results"`
SRC_DIR=/datasets/bzaitlen/GitRepos/numba-benchmark-ci
LOG_FILE_PATH=$SRC_DIR/logs/${FILE}
cd $SRC_DIR

#asv run NEW --launch-method spawn > $FILE_PATH 2>&1
#git add $SRC_DIR/results/*
#git commit -m "$COMMIT_MSG"

#asv publish
echo "Copying HTML Data..."
cd ../numba-benchmark-ci-gh-pages
cp -r ../numba-benchmark-ci/html/* .
git add .
git commit -a -m 'add new results'
source ~/.gh-access-token
#curl -H "Authorization: token ${GITHUB_TOKEN}" -u "username:<MYTOKEN>" https://github.com/username/ol3-1.git
echo "Publishing Results..."
git push origin gh-pages
cd -

#source ~/env-vars.txt
#python publish-results.txt
