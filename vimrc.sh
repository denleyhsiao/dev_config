#!/usr/bin/env bash

WORK_PATH=$(cd $(dirname $0); pwd)

ln -s ${WORK_PATH}/vimrc.vim $HOME/.vimrc
