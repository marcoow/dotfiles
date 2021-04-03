source ~/.zsh/completion
source ~/.zsh/history
source ~/.zsh/keybindings
source ~/.zsh/aliases
source ~/.zsh/commandline
source ~/.zsh/prompt

if [ -d ~/.zsh/initializers ]
then
  for file in ~/.zsh/initializers/*
  do
    source $file
  done
fi

CPU=$(uname -p)
if [[ "$CPU" == "arm" ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
  alias oldbrew=/usr/local/bin/brew
else
  export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
fi

export VOLTA_HOME="$HOME/.volta"
export PATH="./bin:$VOLTA_HOME/bin:$HOME/.cargo/bin:$HOME/.exenv/bin:$HOME/.erlenv/bin:$HOME/.rbenv/bin:/usr/local/share/npm/bin:/usr/sbin:$PATH"
export EDITOR="nova -w"

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init - zsh)"; fi

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

export ERL_AFLAGS="-kernel shell_history enabled"
