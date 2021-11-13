# .bashrc

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias vi='vim'
alias ls='ls -al'
alias up='cd ..; ls'

#tmux
function tm() {
    if [ -n "${1}" ]; then
        tmux attach-session -t ${1} || \
        tmux new-session -s ${1}
    else
        tmux attach-session || \
        tmux new-session
    fi
}
