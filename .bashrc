if [ -r ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -r ~/.dircolors -a -x /usr/bin/dircolors ]; then
    eval "$(/usr/bin/dircolors -b ~/.dircolors)"
fi

PS1="[\[\e[1;34m\]\w\[\e[m\]] \[\e[1;31m\]$\[\e[m\] "

