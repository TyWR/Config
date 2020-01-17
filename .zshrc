export ZSH="/home/tywr/.oh-my-zsh"
export ZSH_THEME="tywr"

# Adding some apps to the path
export PATH="$HOME/.miniconda3/bin:$PATH"
export PATH="/usr/local/Cellar/joplin/1.0.150/bin:$PATH"

# Aliases
alias v="nvim"
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
export EDITOR=nvim
alias icat="kitty +kitten icat"
alias lg="lazygit"
alias r="ranger"
alias ra="ranger"
alias sv="sudo nvim"
alias sr="sudo ranger"
alias wpm="python -m wpm"

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
source /home/tywr/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
