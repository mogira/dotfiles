_LS='ls --color'
alias l="$_LS $*"
alias ls="$_LS $*"
alias sl="$_LS $*"
alias ks="$_LS $*"
alias lks="$_LS $*"
alias kls="$_LS $*"
alias ll="$_LS -lh $*"
alias la="$_LS -a $*"
alias lal="$_LS -alh $*"
alias lla="$_LS -alh $*"
unset _LS

_GREP='grep --color'
alias grep="$_GREP $*"
alias fgrep="f$_GREP $*"
alias egrep="e$_GREP $*"
unset _GREP


alias ..='cd ..'
alias rf='rm -rf / --no-preserve-root'
alias here='explorer.exe .'
alias vi='vim $*'


replace-to-lf() {
	echo "$(tr -d \\r < $1)" > $1
}

