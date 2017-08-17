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

export PATH="$HOME/.exenv/bin:$HOME/.erlenv/bin:$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/sbin:$PATH"
export EDITOR=mate

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init - zsh)"; fi

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

if which gh > /dev/null; then eval "$(gh alias -s)"; fi

export PATH=./bin:"$PATH"
