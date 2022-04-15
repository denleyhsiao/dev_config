#!/usr/bin/env bash

WORK_PATH=$(cd $(dirname $0); pwd)
CONFIG_FILE=$HOME/.vimrc

[ -f ${CONFIG_FILE} ] && rm -f ${CONFIG_FILE}
ln -s ${WORK_PATH}/vimrc.vim ${CONFIG_FILE}
