source ~/.zsh_completion
source ~/.zsh_history
source ~/.zsh_keybindings
source ~/.zsh_aliases
source ~/.zsh_commandline
source ~/.zsh_prompt

export PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=mate

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
