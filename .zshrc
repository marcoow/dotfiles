autoload -U colors && colors
autoload -U compinit && compinit

autoload -U edit-command-line

zstyle ':completion:*' special-dirs true
zstyle ':completion:*' insert-tab pending
zstyle ':completion:*' list-colors 'Exfxcxdxbxegedabagacad'
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path .zcache
zstyle ':completion:*:*:*:*:*' menu select

zle -N edit-command-line

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_CDABLE_VARS
setopt COMPLETE_IN_WORD
setopt AUTO_MENU
setopt ALWAYS_TO_END
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt PROMPT_SUBST

bindkey '^r' history-incremental-search-backward
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char
bindkey '\C-x\C-e' edit-command-line

source ~/.zsh_aliases

export PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export EDITOR=mate
export CLICOLOR=1

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

function rbenv_prompt_info() { echo "$(ruby -v | cut -f 2 -d ' ' | cut -f 1 -d 'p')" }

PROMPT='%n@%1~$(vcprompt -f " [%%{$fg_bold[yellow]%%}%b%%{$reset_color%%}]") (%{$fg_bold[blue]%}$(rbenv_prompt_info)%{$reset_color%}) > %{$reset_color%}'