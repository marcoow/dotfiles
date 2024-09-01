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

export PATH="$HOME/.cargo/bin:$HOME/.exenv/bin:$HOME/.erlenv/bin:$HOME/.rbenv/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/share/npm/bin:/usr/sbin:$PATH"
export EDITOR="nova -w"

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
  # Fix Homebrew/Pyenv interaction
  alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
fi

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"

export ERL_AFLAGS="-kernel shell_history enabled"
