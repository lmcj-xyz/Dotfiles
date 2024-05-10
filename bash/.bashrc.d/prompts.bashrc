# Git branch info
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# LMCJ user prompt
PS1='\[\033[2;35m\]\u\[\033[0m\]\[\033[2;37m\]@\[\033[0m\]\[\033[2;36m\]\h\[\033[0m\] \[\033[4;37m\]\W\[\033[0m\]\n\[\033[2;33m\]$(parse_git_branch)\[\033[0m\]\[\033[1;31m\]-\[\033[0m\]\[\033[1;32m\]-\[\033[0m\]\[\033[1;33m\]-\[\033[0m\]\[\033[1;34m\]>\[\033[0m\] '
