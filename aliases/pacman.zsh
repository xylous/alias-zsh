## Pacman aliases

alias p='pacman'
alias sp='sudo pacman'
alias pacman-browse="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias p-b="pacman-browse"
