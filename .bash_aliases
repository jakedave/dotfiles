# General
alias c="clear"
alias hc="history -c"
alias h="history"
alias a="alias"
alias r="source ~/.bash_profile"
alias e="exit"
alias ex="export"

# Directory Listing
alias ls="ls -G"
alias la="ls -AG"
alias ll="ls -ltr"

# Directory Navigation
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# Directory Creation
alias mkdir="mkdir -p"

# Destructive Commands
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -I"

# Path
alias path='echo -e ${PATH//:/\\n}'

# Git
alias gi="git init"
alias gc="git clone"
alias gcm="git commit -m"
alias gba="git branch -a"

# Processes
alias p="ps aux | less"

# Text Editing
alias vi="vim"