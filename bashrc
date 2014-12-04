
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## user distinguish ##
#PS1='[\u@\h \W]\$ '  # Default

# Green Prompt for regular users :: Check /root/.bashrc for root setting
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '


# Bash Prompt
# Green username 
export PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

# ~ >
#export PS1='\[\033[0;36m\]\W\[\033[0;32m\]$(__git_ps1 " (%s)") \[\033[0;34m\]>\[\033[0m\] '

#### Autocomplete {{{
#    if [ -f /etc/bash_completion ]; then
#        . /etc/bash_completion
#    fi
#
#    complete -cf sudo man type
#    complete -W "+%H:%M +%d.%m.%y_%H:%M" date
#    bind "set completion-ignore-case on"
#### }}}

# Always use UTF8
export LANG=en_US.UTF-8

# Editor and pager, 
export EDITOR=vim
#export PAGER=vimpager
export GIT_PAGER=less

# Preserve environment when doing "sudo vim [..]"
function sudo() {
    case $* in
        vim* ) shift 1; command sudo -E vim "$@" ;;
        * ) command sudo "$@" ;;
    esac
}

# SETTINGS FOR IBUS
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Source additional files
if [ -f $HOME/.alias ]; then . $HOME/.alias; fi

# Source additional files
if [ -f $HOME/.bashrc.local ]; then source $HOME/.bashrc.local; fi
if [ -f $HOME/.alias.local ]; then source $HOME/.alias.local; fi

