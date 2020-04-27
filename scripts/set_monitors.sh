#!/bin/bash

NUM_MONITORS=$(xrandr | grep ' connected' | wc -l)

if [ $NUM_MONITORS = '2' ]; then
    source ~/.screenlayout/fieldsense.sh
elif [ $NUM_MONITORS = '3' ]; then
    source ~/.screenlayout/au.sh
fi
