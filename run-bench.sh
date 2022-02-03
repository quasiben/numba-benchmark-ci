#!/bin/bash

FILE=`date +"%Y%m%d-asv-output.txt"`
COMMIT_MSG=`date +"%Y%m%d new results"`
FILE_PATH=/datasets/bzaitlen/GitRepos/numba-benchmark-ci/logs/${FILE}

#asv run NEW --launch-method spawn > $FILE_PATH 2>&1
git add results/*
git commit -m $COMMIT_MSG

asv publish

#source ~/env-vars.txt
#python publish-results.txt
