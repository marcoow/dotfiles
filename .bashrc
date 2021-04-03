source ~/.bash/completion
source ~/.bash/aliases
source ~/.bash/prompt

CPU=$(uname -p)
if [[ "$CPU" == "arm" ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
  alias oldbrew=/usr/local/bin/brew
else
  export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="./bin:$VOLTA_HOME/bin:$HOME/.rbenv/bin:$PATH"

export EDITOR="nova -w"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi
