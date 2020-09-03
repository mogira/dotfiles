if [ -r ~/.wsl_profile ]; then
    source ~/.wsl_profile
fi

export LANG=ja_JP.UTF-8

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

