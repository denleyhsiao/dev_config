export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
export LC_CTYPE=en_US.UTF-8
export HOMEBREW_API_DOMAIN="https://mirrors.aliyun.com/homebrew-bottles/api"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.aliyun.com/homebrew/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.aliyun.com/homebrew/homebrew-bottles"

source /home/linuxbrew/.linuxbrew/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen theme candy

antigen bundle git
antigen bundle autojump
antigen bundle brew
antigen bundle brew-cask
antigen bundle command-not-found
antigen bundle osx
antigen bundle ssh-agent

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle marlonrichert/zsh-autocomplete@main
antigen bundle MichaelAquilina/zsh-you-should-use

antigen apply

alias ev='vim ~/.zshrc'
alias sv='source ~/.zshrc'
