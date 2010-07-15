source ~/.bash_completion

export PATH="/usr/local/Cellar/ruby-enterprise-edition/2010.02/bin:/usr/local/sbin:/usr/local/bin:$PATH"

export EDITOR="mate -w"

export PS1='\[\033[1;39m\]\u@\W $(__git_ps1 "[\[\033[1;34m\]%s\[\033[1;39m\]] ")> '