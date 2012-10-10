source ~/.bash_completion
source ~/.bash_aliases

export PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:$PATH"

export EDITOR="mate -w"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

function __active_ruby_version {
  echo `rbenv version-name` | awk -F '-' '{print $1}'
}

export PS1='\u@\W $(__git_ps1 "[\[\033[1;33m\]%s\[\033[1;39m\]] ")(\[\033[0;37m\]$(__active_ruby_version)\[\033[1;39m\]) > '
