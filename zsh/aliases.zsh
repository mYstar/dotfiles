alias reload!='. ~/.zshrc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -la'

# searching with input window
alias find-z='zenity --entry --text="Suchwort:" 2> /dev/null | xargs find . -name'
