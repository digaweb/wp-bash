#!/bin/bash

# Disable wordpress plugin one by one & asks if it resolves the issue
# Helpful to diagnose 500 error or White Page of Death

# Directory where wordpress is installed
dir=""

cd ${dir}

for i in *; do
  echo "Checking ${i} now"
  mv $i $i.bak
  echo "Did it work? 0 for no & 1 for yes"
  read confirm
  if [[ $confirm == "1" ]]; then
    echo "${i} had the issue"
    exit
  elif [[ $confirm == "0" ]]; then
    mv $i.bak $i
  else
    echo "I need a 0 or 1"
  fi
done
