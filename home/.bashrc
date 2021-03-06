# ~/.bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Checks that homesick castles are up-to-date
which homeshick &>/dev/null && homeshick --quiet refresh 1

# User specific aliases and functions
[ -f "~/.bash_aliases" ] && source "~/.bash_aliases"

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# Check the window size after each command and, if necessary, update the values
# of LINES and COLUMNS.
shopt -s checkwinsize

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Make vim the default editor
export EDITOR="vim"

# Ignore duplicate commands in the history
export HISTCONTROL=ignoredups

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

##
## Ruby related settings
##
export GEM_PATH=$HOME/.gem

# chruby settings
if [ -d "~/.rbenv/versions/" ]; then
  RUBIES+=(~/.rbenv/versions/*)
elif [ -d "~/.rvm/rubies/" ]; then
  RUBIES+=(~/.rvm/rubies/*)
fi
[ -f /usr/local/share/chruby/chruby.sh ] && source /usr/local/share/chruby/chruby.sh
[ -f /usr/local/share/chruby/auto.sh ] && source /usr/local/share/chruby/auto.sh

# Python related settings
# which virtualenvwrapper.sh &>/dev/null && source $(which virtualenvwrapper.sh)
if [ -x "$HOME/.pyenv/bin/pyenv" ]; then
  export PATH="$PATH:$HOME/.pyenv/bin"
  eval "$(pyenv init -)"
  [ -d "$HOME/.pyenv/plugins/pyenv-virtualenv/" ] && eval "$(pyenv virtualenv-init -)"
fi

# travis bash completion
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"

# homeshick integration and bash completion
[ -f "$HOME/.homesick/repos/homeshick/homeshick.sh" ] && source "$HOME/.homesick/repos/homeshick/homeshick.sh"
[ -f "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash" ] && source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
