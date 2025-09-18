export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi
