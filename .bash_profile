if [ -r ~/.profile ]; then
    source ~/.profile
fi

if [ "$PS1" -a -r ~/.bashrc ]; then
    source ~/.bashrc
fi

