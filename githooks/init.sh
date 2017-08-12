#!/usr/bin/env sh

# Script to link hooks in a fresh git clone
#
# Changelog:
#   2017-08-12  Initial commit

# MIT License (MIT)
# Copyright (c) 2017 Nelo-T. Wallus <nelo@wallus.de>

set -e

if
    test ! -h .git/hooks
    test "$(readlink -f .git/hooks)" != '../hooks'
then
    rm -rf .git/hooks
    ln -s ../hooks .git/hooks
fi
