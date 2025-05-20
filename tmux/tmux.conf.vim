## 修改 tmux-prefix 键: ctrl+b --> ctrl+a
set -g prefix c-a
unbind c-b
bind c-a send-prefix

########## 插件 ##########
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# tmux-resurrect 插件，用于手动保存和恢复 tmux 环境信息。
# 使用方式：按 prefix,ctrl+s 保存 session，按 prefix,ctrl+r 恢复 session
set -g @plugin 'tmux-plugins/tmux-resurrect'
# 使 tmux-resurrect 支持保存和恢复 tmux 中的 vim 会话:
set -g @resurrect-strategy-vim 'session'  # 需要 vim 先安装 https://github.com/tpope/vim-obsession 插件

# tmux-continuum 插件。依赖: tmux>=1.9, bash, tmux-resurrect
# 每隔15分钟自动保存 tmux 环境信息(不需要任何配置，默认就有)
set -g @plugin 'tmux-plugins/tmux-continuum'
# 使得机器启动时，自动启动 tmux server:
set -g @continuum-boot 'on'  # this is only for linux. for macosx, see: https://github.com/tmux-plugins/tmux-continuum/blob/master/docs/automatic_start.md
# tmux server 启动时，自动加载上次保存的环境信息
set -g @continuum-restore 'on'


# 初始化 tmux 插件管理器(保证这行在 ~/.tmux.conf 的非常靠后的位置)
run '~/.tmux/plugins/tpm/tpm'
