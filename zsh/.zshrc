export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

export PATH="/opt/homebrew/opt/node@24/bin:$PATH"

# frequently accessd
export DOTFILE="$HOME/dotfiles/.config/nvim"
alias dotvim="nvim $DOTFILE"
