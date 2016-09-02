# ~/.bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

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

# Checks that homesick castles are up-to-date
which homeshick &>/dev/null && homeshick --quiet refresh 1

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# travis bash completion
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"

# homeshick integration and bash completion
[ -f "$HOME/.homesick/repos/homeshick/homeshick.sh" ] && source "$HOME/.homesick/repos/homeshick/homeshick.sh"
[ -f "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash" ] && source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"

[ -f "~/.bash_aliases" ] && source "~/.bash_aliases"
