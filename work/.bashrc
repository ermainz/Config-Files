# /usr/local/bin:/Applications/MacVim/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
PATH=/usr/local/bin:/Applications/MacVim/:$PATH

alias ls='ls -alGh'

#load git branch prompt script
source ~/.git-prompt.sh

#export PS1="[\t]\u@\h "
#directory basename
#\e[0;34m - blue
#\e[1;34m - dark blue
#\e[1;31m - dark red
export PS1="[\A]\u@\h:\e[0;34m\W\e[m:\e[1;34m\$(__git_ps1)\e[m \e[1;31m>\e[m "
#full directory name
#export PS1="[\A]\u@\h:\w > "
