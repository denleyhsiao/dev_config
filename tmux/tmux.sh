#!/usr/bin/env bash
# 
# @author: denley@justtodo.com 
# @date: 2025-05-19 18:18 
# @description: 


WORK_PATH=$(cd $(dirname $0); pwd)
CONFIG_FILE=~/.tmux.conf
PLUG_PATH=~/.tmux/plugins/tpm

[ ! -d ${PLUG_PATH} ] && git clone https://github.com/tmux-plugins/tpm ${PLUG_PATH}

[ -f ${CONFIG_FILE} ] && rm -f ${CONFIG_FILE}
ln -s ${WORK_PATH}/tmux.conf.vim ${CONFIG_FILE}
