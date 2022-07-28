
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# color support
if [ -f /usr/bin/grc ]; then
 alias gcc="grc --colour=auto gcc"
 alias irclog="grc --colour=auto irclog"
 alias log="grc --colour=auto log"
 alias netstat="grc --colour=auto netstat"
 alias ping="grc --colour=auto ping"
 alias proftpd="grc --colour=auto proftpd"
 alias traceroute="grc --colour=auto traceroute"
fi

# vim and nvim
if hash nvim 2>/dev/null; then
	alias vi="vim"
	alias vim="nvim"
fi

alias sudo='sudo -E'

# some more ls aliases
alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -CF'
alias em='emacs -nw'
alias dd='dd status=progress'
alias _='sudo'
alias _i='sudo -i'

# Git
alias gsu="git submodule update"
alias gco="git checkout"
alias gs='git status '
alias gf='git fetch '
alias gfc='git fetch && git checkout '
alias gl='git log --pretty=oneline'

# uses 'thefuck' to fix common command mistakes
# https://github.com/nvbn/thefuck
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
