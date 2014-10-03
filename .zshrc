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

export PATH="$HOME/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/npm/bin:/usr/sbin:$PATH"
export EDITOR=mate
export ANDROID_HOME=`brew --prefix android`

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

export PATH=./bin:"$PATH"
