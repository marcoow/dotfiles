source ~/.zsh/completion
source ~/.zsh/history
source ~/.zsh/keybindings
source ~/.zsh/aliases
source ~/.zsh/commandline
source ~/.zsh/prompt

export PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:$PATH"
export EDITOR=mate

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
