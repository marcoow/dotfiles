source ~/.bash/completion
source ~/.bash/aliases
source ~/.bash/prompt


export PATH="$HOME/.cargo/bin:/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/.rbenv/bin:$PATH"

export PNPM_HOME="/Users/marcoow/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export EDITOR="nova -w"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
  # Fix Homebrew/Pyenv interaction
  alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"
fi

