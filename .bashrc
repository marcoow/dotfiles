source ~/.bash/completion
source ~/.bash/aliases
source ~/.bash/prompt

export PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:$PATH"

export EDITOR="mate -w"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
