alias claer='clear'
alias clera='clear'

alias mandr='mongod -dbpath /usr/local/var/mongodb/ & redis-server &'

function gitd()
{
    if [ -z $1 ]
    then
        git diff --relative --no-ext-diff --name-status
    else
        git diff --relative --no-ext-diff $1
    fi
}
