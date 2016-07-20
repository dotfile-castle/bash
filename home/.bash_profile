# .bash_profile

# Checks that homesick castles are up-to-date
which homeshick &>/dev/null && homeshick --quiet refresh 1

# Interactive non-login shell configuration
[ -f ~/.bashrc ] && . ~/.bashrc

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
