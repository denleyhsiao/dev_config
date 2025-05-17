#!/usr/bin/env bash

WORK_PATH=$(cd $(dirname $0); pwd)

git config --global user.name "Denley Hsiao"
git config --global user.email denley@justtodo.com
git config --global credential.helper store
git config --global core.editor vim
git config --global core.excludesFile "${WORK_PATH}/gitignore_global"
git config --global http.sslVerify false
git config --global http.postBuffer 524288000 #500M
git config --global https.postBuffer 524288000 #500M
git config --global init.defaultBranch master
