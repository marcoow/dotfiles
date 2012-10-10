autoload -U compinit
compinit

zstyle ':completion:*' special-dirs true
zstyle ':completion:*' insert-tab pending
zstyle ':completion:*' list-colors 'Exfxcxdxbxegedabagacad'

source ~/.zsh_aliases

setopt NO_CDABLE_VARS
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt EXTENDED_HISTORY
setopt PROMPT_SUBST

autoload -U colors && colors

export PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=mate
export CLICOLOR=1

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

function rbenv_prompt_info() { echo "$(ruby -v | cut -f 2 -d ' ' | cut -f 1 -d 'p')" }

PROMPT='%n@%1~$(vcprompt -f " [%%{$fg_bold[yellow]%%}%b%%{$reset_color%%}]") (%{$fg_bold[blue]%}$(rbenv_prompt_info)%{$reset_color%}) > %{$reset_color%}'