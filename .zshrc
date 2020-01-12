export ZSH="/Users/viviertanguy/.oh-my-zsh"
export ZSH_THEME="tywr"

# Adding some apps to the path
export PATH="$HOME/opt/miniconda3/bin:$PATH"
export PATH="/usr/local/Cellar/joplin/1.0.150/bin:$PATH"

# Aliases
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
export EDITOR=vim
alias icat="kitty +kitten icat"
alias lg="lazygit"
alias ra="ranger"

# Fix some bugs with Python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

autoload -U compinit
compinit

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
