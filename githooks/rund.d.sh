#!/usr/bin/env sh

# Runs all scripts in the directory of the referring hooks dir.
# E.g. if this file is symlinked to commit-msg, it will execute all
# files in commit-msg.d/
#
# Changelog:
#   2017-08-12  Initial commit

# The MIT License (MIT)
# Copyright (c) 2017 Nelo-T. Wallus <nelo@wallus.de>

set -x

# save input
inputf=$(mktemp)
while read line; do
    echo "$line" >> $inputf
done

for hook in $0.d/*; do
    if test ! -x $hook; then
        echo "Hook '$hook' is not executable, skipping" >&2
        continue
    fi

    ./$hook < $inputf
done
