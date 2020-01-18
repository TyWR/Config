ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[magenta]%}<⎇  "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg_bold[red]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

conda_env() {
    if [ ! -z "$CONDA_PREFIX" ]
    then
        print -n "%{$fg_bold[blue]%} (Conda > ${CONDA_PREFIX##*/})%{$reset_color%}"
    fi
}

PROMPT='
  %{$fg_bold[blue]%}%{%{$fg_bold[cyan]%}%3c%{$reset_color%}$(git_prompt_info)$(conda_env)
 %{$fg_bold[blue]%}∙> %{$reset_color%}'

