# /usr/local/bin:/Applications/MacVim/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
# RUBYGEMS=/usr/local/Cellar/ruby195/1.9.3-p448/bin
PATH=/usr/local/bin:/usr/local/sbin:/Applications/MacVim:$PATH

#Android
PATH=~/adt-bundle-mac-x86_64-20131030/sdk/tools:~/adt-bundle-mac-x86_64-20131030/sdk/platform-tools:$PATH

PATH=~/bin:$PATH

PATH=~/Library/Android/sdk/tools::$PATH

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
source ~/.git-completion.sh

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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PGHOST=localhost

export EDITOR=vim

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8"
export MAVEN_OPTS="-Xmx1024M -Xms1024M -XX:PermSize=256M -XX:MaxPermSize=256M -Djava.awt.headless=true"

if [ -s ~/.workrc ] 
then
  source ~/.workrc
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
