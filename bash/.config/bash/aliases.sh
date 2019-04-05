# shorthands for ls
alias ll='ls -al'
alias la='ls -A'
alias l='ls -CF'

# Git
alias gsu="git submodule update"
alias gs='git status '
alias gf='git fetch '
alias gfc='git fetch && git checkout '

alias got='git '
alias get='git '
alias gut='git '

# uses 'thefuck' to fix common command mistakes
# https://github.com/nvbn/thefuck
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
