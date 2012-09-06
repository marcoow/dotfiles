ZSH=$HOME/.oh-my-zsh

plugins=(git osx)

CASE_SENSITIVE="true"

source $ZSH/oh-my-zsh.sh

source ~/.zsh_aliases

autoload -U colors && colors
setopt prompt_subst

export PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:$PATH"

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

function rbenv_prompt_info() { echo "$(ruby -v | cut -f 2 -d ' ' | cut -f 1 -d 'p')" }

PROMPT='%n@%1~$(vcprompt -f " [%%{$fg_bold[green]%%}%b%%{$reset_color%%}]") (%{$FG[008]%}$(rbenv_prompt_info)%{$reset_color%}) > %{$reset_color%}'