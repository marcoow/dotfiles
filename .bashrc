export PATH="/usr/local/Cellar/ruby-enterprise-edition/2010.02/bin:/usr/local/sbin:/usr/local/bin:$PATH"

export EDITOR="mate -w"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ \1/"
}

export PS1="\u@\W\e[1;34m\$(parse_git_branch)\\e[1;39m > "
