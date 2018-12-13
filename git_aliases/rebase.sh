#!/bin/bash
REMOTES="$(git remote)"
if [[ $REMOTES != *"upstream"* ]]; then 
  git remote add upstream git@github.com/rglew/some_repo
fi
git fetch upstream
git rebase upstream/master
git push origin master --force
