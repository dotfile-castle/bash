# .bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Checks that homesick castles are up-to-date
which homeshick &>/dev/null && homeshick --quiet refresh 1

# Source global definitions
[ -f /etc/bashrc ] && . /etc/bashrc

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# travis bash completion
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"

# homeshick integration and bash completion
[ -f "$HOME/.homesick/repos/homeshick/homeshick.sh" ] && source "$HOME/.homesick/repos/homeshick/homeshick.sh"
[ -f "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash" ] && source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
