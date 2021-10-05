#!/bin/bash

echo "Are you sure you want to source $1 [y/n]"
read CONFIRM

if [[ $CONFIRM != "y" ]] then
    echo "See you!"
    return
fi

while read p; do
  eval y="$p"
  export $y
done <$1
echo "Happy Coding!"
return
