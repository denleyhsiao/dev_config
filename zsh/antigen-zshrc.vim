export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export LC_CTYPE=en_US.UTF-8
export HOMEBREW_API_DOMAIN="https://mirrors.aliyun.com/homebrew-bottles/api"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.aliyun.com/homebrew/homebrew-bottles"

# The plugin manager for zsh.
source /home/linuxbrew/.linuxbrew/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_PREFIX="["
SPACESHIP_TIME_SUFFIX="] "
SPACESHIP_TIME_FORMAT="%D{%Y-%m-%d} %*"
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_PREFIX="["
SPACESHIP_DIR_SUFFIX="] "

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle autojump
antigen bundle brew
antigen bundle brew-cask
antigen bundle bundler
antigen bundle common-aliases
antigen bundle colored-man
antigen bundle extract
antigen bundle gitfast
antigen bundle git-extras
antigen bundle safe-paste
antigen bundle vi-mode

# For SSH, starting ssh-agent is annoying
antigen bundle ssh-agent

# Plugins not part of Oh-My-Zsh can be installed using githubusername/repo
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle marlonrichert/zsh-autocomplete@main
antigen bundle MichaelAquilina/zsh-you-should-use

# Tell Antigen that you're done.
antigen apply
