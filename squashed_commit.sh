#!/usr/bin/env bash

# Stop immediately if any command returns nonzero.
set -e

git commit --amend --no-edit
git push --force
