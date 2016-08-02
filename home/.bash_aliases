# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# Always use color output for `ls`
alias ls="command ls -AF ${colorflag}"

# List all files colorized in long format
alias ll="ls -hl"
alias l1='ls -1'

# List all files colorized in long format, including dot files
alias la="ls -a"

# List only directories
alias lsd="ls -lAF | grep --color=never '^d'"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~"
alias -- -="cd -"

# IP addresses
alias ippublic="dig +short myip.opendns.com @resolver1.opendns.com"
alias iplocal="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
