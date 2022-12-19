#!/usr/bin/env bash

WORK_PATH=$(cd $(dirname $0); pwd)

git config --global user.name "Denley Hsiao"
git config --global user.email denley@justtodo.com
git config --global core.editor vim
git config --global http.postBuffer 524288000
git config --global https.postBuffer 52428800
git config --global core.excludesfile ${WORK_PATH}/.gitignore

