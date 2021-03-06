#!/bin/sh

git filter-branch --env-filter '

    n=$GIT_AUTHOR_NAME
    m=$GIT_AUTHOR_EMAIL

    case ${GIT_AUTHOR_NAME} in
        "Carlos Pérez-Aradros Herce") n="exekias" ; m="cperez@zentyal.com" ;;
    esac

    export GIT_AUTHOR_NAME="$n"
    export GIT_AUTHOR_EMAIL="$m"
    export GIT_COMMITTER_NAME="$n"
    export GIT_COMMITTER_EMAIL="$m"
'
