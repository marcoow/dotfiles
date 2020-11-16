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

export PATH="$HOME/.cargo/bin:$HOME/.exenv/bin:$HOME/.erlenv/bin:$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/sbin:$PATH"
export EDITOR="nova -w"

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init - zsh)"; fi

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

if which gh > /dev/null; then eval "$(gh alias -s)"; fi

export ERL_AFLAGS="-kernel shell_history enabled"

export PATH=./bin:"$PATH"
