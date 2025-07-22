#!/bin/bash

# fetch submodules and superproject updates
git submodule foreach --recursive git fetch --all

git fetch --all

# in case, select the branch
# git checkout main

# bring desired branch up to date with the upstream
git rebase upstream/main

# update submodules to the latest state
git submodule update --recursive
