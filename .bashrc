if [ -r ~/.shrc ]; then
    source ~/.shrc
fi


HISTTIMEFORMAT='%F %T '
HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=20000


#if [ -r ~/.bash_aliases ]; then
#    source ~/.bash_aliases
#fi

