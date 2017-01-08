alias claer='clear'
alias clera='clear'

export PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[0;35m\]\W\[\e[m\] \[\e[1;36m\]$(parse_git_branch)\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function gitd()
{
    if [ -z $1 ]
    then
        git diff --relative --no-ext-diff --name-status
    else
        git diff --relative --no-ext-diff $1
    fi
}
