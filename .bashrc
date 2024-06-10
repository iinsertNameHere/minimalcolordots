#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pyenv='python -m venv'
alias sudo='doas'

export TERM=xterm

# PS1='[\u@\h \W]\$ '
# Config PS1 Prompt
function __setprompt {
    PS1=""
    
    # Python VENV
    if test -z "$VIRTUAL_ENV" ; then
      PYTHON_VENV=""
    else
      PYTHON_VENV=" \[\033[0;34m\](`basename \"$VIRTUAL_ENV\"`)"
    fi
    
    # Folder or Git folder
    FOLDER="\[\033[1;34m\] \w"
    
    PS1+="${PYTHON_VENV} ${FOLDER} \[\033[0m\]| \[\033[1;35m\]\u\[\033[1;34m\]@\[\033[1;35m\]\h \[\033[1;32m\] \[\033[0m\]"
}
PROMPT_COMMAND='__setprompt'

catnap -m 3,3,3 -c ~/.config/catnap/custom.toml
