#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## user distinguish ##
#PS1='[\u@\h \W]\$ '  # Default

# Green Prompt for regular users :: Check /root/.bashrc for root setting
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '


# Gree/Blue prompt for regular users
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'



## alias settings ##
alias editbash='vim ~/.bashrc'
alias ls='ls --color=auto'
alias redwm='cd ~/dwm; updpkgsums; makepkg -efi --noconfirm; killall dwm'
alias sshcs1='ssh cs61c-hm@hive1.cs.berkeley.edu'
alias sshcs2='ssh cs61c-hm@hive2.cs.berkeley.edu'
alias wifi='sudo wifi-menu'
alias airbears2='sudo netctl start Airbears2'

alias incback='xbacklight -inc 10'
alias decback='xbacklight -dec 10'

alias mars='java -jar ~/.builds/mars.jar'

# Git related sudo code

alias add='git add .'
alias commit='git commit -am '
alias push='git push origin master'
alias pull='git pull origin master'
alias st='git status'

