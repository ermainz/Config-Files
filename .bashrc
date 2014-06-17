# /usr/local/bin:/Applications/MacVim/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin
RUBYGEMS=/usr/local/Cellar/ruby193/1.9.3-p448/bin
PATH=/Applications/Racket\ v5.3.6/bin:/usr/local/bin:/Applications/MacVim:$RUBYGEMS:$PATH

#Android
PATH=~/adt-bundle-mac-x86_64-20131030/sdk/tools:~/adt-bundle-mac-x86_64-20131030/sdk/platform-tools:$PATH

alias ls='ls -alGh'
alias validate='~/crashplan_core/core-tools/bin/validate_plan.rb'
alias infcups='while true; do ruby ~/crashplan_core/core-tools/bin/cups.rb; sleep 5; done'

alias createdb='/Users/erik.mainz/code42/core/pro_core/conf/bin/createDB.py -a'
alias startandroid='emulator -avd Nexus4 -wipe-data -scale .5 &'
alias buildweb='cd ~/code42/core/web && grunt && cd -'

#load git branch prompt script
source ~/.git-prompt.sh

#export PS1="[\t]\u@\h "
#directory basename
#\e[0;34m - blue
#\e[1;34m - dark blue
#\e[1;31m - dark red
export PS1="[\A]\u@\h:\e[0;34m\w\e[m:\e[1;34m\$(__git_ps1)\e[m \n \e[1;31m>\e[m "
#full directory name
#export PS1="[\A]\u@\h:\w > "

export ANT_OPTS=-Xmx2g


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
