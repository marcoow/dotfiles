source ~/.bash_completion
source ~/.bash_aliases

export PATH="/usr/local/Cellar/ruby-enterprise-edition/2010.02/bin:/usr/local/sbin:/usr/local/bin:$PATH"

export EDITOR="mate -w"

function __my_rvm_ruby_version {
  echo `basename $MY_RUBY_HOME` | awk -F '-' '{print $1, $2}'
}

export PS1='\u@\W $(__git_ps1 "[\[\033[1;34m\]%s\[\033[1;39m\]] ")(\[\033[0;37m\]$(__my_rvm_ruby_version)\[\033[1;39m\]) > '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"