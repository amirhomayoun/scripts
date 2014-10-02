#!/bin/bash

# Exit all background processes when this dies
trap 'kill $(jobs -p)' EXIT

for file in "$@"
do
    tail -f $file &
done
wait
