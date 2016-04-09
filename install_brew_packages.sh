#!/bin/bash
# install of the brew packages

cat $(dirname $0)/brew_leaves | xargs brew install