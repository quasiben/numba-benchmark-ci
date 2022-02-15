#!/bin/bash

# Time to run
CRON_SECONDS=00
CRON_MINUTES=00
CRON_HOURS=00

# Sleep until time matches ${SECONDS}
while [ "$(date +%S)" != ${CRON_SECONDS} ]; do
    sleep 1
done

# Sleep until system time matches ${CRON_HOURS}${CRON_MINUTES}
while [ "$(date +%H%M)" != "${CRON_HOURS}${CRON_MINUTES}" ]; do
    sleep 1m
done

# Run script and sleep for one day
while true; do
    echo "Starting job at " $(date)
    bash /datasets/bzaitlen/GitRepos/numba-benchmark-ci/run-bench.sh &
    sleep 1d
done
