# .bash_profile

# Set colors
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

# Checks that homesick castles are up-to-date
which homeshick &>/dev/null && homeshick --quiet refresh 1

# Interactive non-login shell configuration
[ -f ~/.bashrc ] && . ~/.bashrc

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
