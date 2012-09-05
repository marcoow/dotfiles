ZSH=$HOME/.oh-my-zsh

plugins=(git osx)

CASE_SENSITIVE="true"

source $ZSH/oh-my-zsh.sh

autoload -U colors && colors
setopt prompt_subst

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

function rbenv_prompt_info() { echo "$(ruby -v | cut -f 2 -d ' ')" }

PROMPT='%n@%1~$(vcprompt -f " [%%{$fg_bold[blue]%%}%b%%{$reset_color%%}]") (%{$fg_bold[yellow]%}$(rbenv_prompt_info)%{$reset_color%}) > %{$reset_color%}'