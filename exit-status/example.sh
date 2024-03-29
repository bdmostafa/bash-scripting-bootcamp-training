#!/bin/bash

HOST="google.com"

ping -c 1 $HOST

if [ "$?" -eq "0" ]
then
  echo "$HOST reachable."
else
  echo "$HOST unreachable."
fi




if [ "$?" -ne "0" ]
then
  echo "$HOST unreachable."
fi



ping -c 1 $HOST
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]
then
  echo "$HOST unreachable."
fi




ping -c 1 $HOST && echo "$HOST reachable."



ping -c 1 $HOST || echo "$HOST unreachable."




ping -c 1 $HOST

if [ "$?" -ne "0" ]
then
  echo "$HOST unreachable."
  exit 1
fi

exit 0
