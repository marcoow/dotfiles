source ~/.bash/completion
source ~/.bash/aliases
source ~/.bash/prompt

export VOLTA_HOME="$HOME/.volta"
export PATH="$HOME/.cargo/bin:/opt/homebrew/bin:$HOME/.rbenv/bin:$PATH"

export EDITOR="nova -w"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

export PATH="./bin:$VOLTA_HOME/bin:$PATH"
