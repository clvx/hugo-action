#!/bin/bash
set -e

git config --global --add safe.directory /github/workspace

echo "Fetching submodules"

git submodule init
git submodule update

echo "Starting Hugo"

sh -c "hugo $*"

echo "Hugo completed"
