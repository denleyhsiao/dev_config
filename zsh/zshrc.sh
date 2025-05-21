#!/usr/bin/env bash
# 
# @author: denley@justtodo.com 
# @date: 2025-05-21 10:32 
# @description: 


WORK_PATH=$(cd $(dirname $0); pwd)
CONFIG_FILE=~/.zshrc

[ -f ${CONFIG_FILE} ] && rm -f ${CONFIG_FILE}
# ln -s ${WORK_PATH}/oh-my-zshrc.vim ${CONFIG_FILE}
ln -s ${WORK_PATH}/antigen-zshrc.vim ${CONFIG_FILE}
