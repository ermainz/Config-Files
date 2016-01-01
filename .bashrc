# /usr/local/bin:/Applications/MacVim/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
# RUBYGEMS=/usr/local/Cellar/ruby195/1.9.3-p448/bin
PATH=/Applications/Racket\ v5.3.6/bin:/usr/local/bin:/Applications/MacVim:$PATH

#Android
PATH=~/adt-bundle-mac-x86_64-20131030/sdk/tools:~/adt-bundle-mac-x86_64-20131030/sdk/platform-tools:$PATH

alias ls='ls -alGh'

alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

alias gs='git status'
alias gsis='git status --ignore-submodules'
alias cleanclasspath='git checkout -- "*.classpath"'
alias findswp='find . -iname "*.swp"'

alias songzor='cd personal/Songzor/Songzor/'

#load git branch prompt script
source ~/.git-prompt.sh

#export PS1="[\t]\u@\h "
#directory basename
#\e[0;34m - blue
#\e[1;34m - dark blue
#\e[1;31m - dark red
export PS1="\n[\A] \u@\h : \e[0;34m\w\e[m :\e[1;34m\$(__git_ps1)\e[m \n \e[1;31m>>\e[m "
#full directory name
#export PS1="[\A]\u@\h:\w > "

export ANT_OPTS=-Xmx2g

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="/Applications/apache-maven-3.3.3/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PGHOST=localhost

export EDITOR=vim

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
#export M2_HOME=/Applications/apache-maven-3.3.3/bin

if [ -s ~/.workrc ] 
then
  source ~/.workrc
fi

export NVM_DIR="/Users/erik.mainz/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
