## zsh-specific aliases

alias history='history'
alias hg='history | grep'

alias szsh='source $ZDOTDIR/.zshrc'
alias _='sudo'

# by default, `help` would be aliased to 'man'
alias run-help &>/dev/null && unalias run-help
autoload -Uz run-help
alias help='run-help'
alias h='run-help'

# editor-related
alias v='$VISUAL'
alias sv='sudo $VISUAL'
