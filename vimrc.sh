#!/usr/bin/env bash

WORK_PATH=$(cd $(dirname $0); pwd)
CONFIG_FILE=$HOME/.vimrc
PLUG_FILE=$HOME/.vim/autoload/plug.vim

[ ! -f ${PLUG_FILE} ] && curl -fLo ${PLUG_FILE} --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[ -f ${CONFIG_FILE} ] && rm -f ${CONFIG_FILE}
ln -s ${WORK_PATH}/vimrc.vim ${CONFIG_FILE}
