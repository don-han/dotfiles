## ALIAS SETTINGS ##
alias sobash='source ~/.bashrc'

alias vibash='vim ~/.bashrc'
alias vivim='vim ~/.vimrc'
alias vial='vim ~/.bash_aliases'

alias ls='ls -GF'
#--color=auto'

alias tmux='tmux -2'        # allows 256 colors for vim to work in tmux

# GIT
alias g='git'
alias add='git add'
alias commit='git commit'
alias st='git status'
alias branch='git branch'
alias checkout='git checkout'

# General
alias ping='ping -c 5'
alias df='df -h'
alias du='du -sh'

alias v='vim'

# Trash
alias mktrash='mkdir -p ~/.Trash'
alias trash='mktrash; mv -t ~/.Trash'
alias t='trash'
alias trash-empty='mktrash; rm -r ~/.Trash'
alias trash-list='mktrash; ls -A ~/.Trash'


# FOR OS X #
alias soprof='source ~/.bash_profile'
alias viprof='vim ~/.bash_profile'
