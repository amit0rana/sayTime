#!/bin/bash

if [ -f "/tmp/sayTime-pause" ]; then
    echo ''
else
    say `date +%H` `date +%M`
fi
