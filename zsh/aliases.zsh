alias reload!='. ~/.zshrc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# searching with input window
alias find-z='zenity --entry --text="Suchwort:" 2> /dev/null | xargs find . -name'

# compiling pandoc markdown to latex
# with nice listings enabled
# Parameters:
## 1: name of the markdown file without ending
alias md2pdf='~/script/pandoc_latex.sh'

# alias for rm to move to trash
alias rm='~/script/trashit.sh'

# better file viewer
alias ls=exa
alias l='exa -la'

# better man pages
alias tldr=~/script/tldr.sh
