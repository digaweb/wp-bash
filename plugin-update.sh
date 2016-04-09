#!/bin/bash
for i in *; do
  echo "Doing ${i} now"
  mv $i $i.bak
  echo "Did it work?"
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
