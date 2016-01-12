# Alias hub as git
eval "$(hub alias -s)"

alias gpr='git pull --rebase'
alias gprr='gpr && git submodule update --init --recursive'
alias gd='git diff'
alias gs='git status'
alias gst='git stash'
alias gco='git checkout'
