#!/bin/bash
set -e

echo "Fetching submodules"

git submodule init
git submodule update

echo "Starting Hugo"

sh -c "hugo $*"

echo "Hugo completed"
