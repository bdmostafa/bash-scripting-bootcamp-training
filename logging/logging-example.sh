#!/bin/bash

logger "Message"
logger -p local0.info "Message"
logger -s -p local0.info "Message"
logger -t myscript -p local0.info "Message"
logger -i -t myscript "Message"


VERBOSE=false
HOST="amazon.com"
PID="$$"
PROGRAM_NAME="$0"
THIS_HOST=$(hostname)

logit () {
  local LOG_LEVEL=$1
  shift  # Shift to the left, discarding the first argument (LOG_LEVEL)
  MSG=$@
  TIMESTAMP=$(date +"%Y-%m-%d %T")
  if [ $LOG_LEVEL = 'ERROR' ] || $VERBOSE
  then
    echo "${TIMESTAMP} ${THIS_HOST} ${PROGRAM_NAME}[${PID}]: ${LOG_LEVEL} ${MSG}"
  fi
}

logit INFO "Processing data."

fetch-data $HOST || logit ERROR "Could not fetch data from $HOST"
