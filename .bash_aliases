# General
alias c="clear"
alias hc="history -c"
alias h="history"
alias a="alias"
alias r="source ~/.bash_profile"
alias e="exit"
alias ex="export"
alias exp="export -p"

alias tls="tmux ls"


# Directory Listing
alias ls="ls -G"
alias la="ls -AG"
alias ll="ls -ltr"
alias lla="ls -altr"

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
alias cp="cp -i"

# Path
alias path='echo -e ${PATH//:/\\n}'

# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gc="git clone"
alias gcm="git commit -m"
alias gba="git branch -a"
alias gpo="git push origin"
alias ga="git add"
alias gl="git log"
alias gcb="git checkout -b"

# Processes
alias p="ps aux | less"

# Text Editing
alias vi="vim"
alias emacs="emacs -nw"

# Python
alias python="python3"
alias pip="pip3"

## Dependencies
alias pf="pip3 freeze"
alias pfr="pip3 freeze > requirements.txt"

## Venv
alias venv="python3 -m venv env"
alias svenv="source env/bin/activate"
alias d="deactivate"

# Stax
alias s="stax"
alias bes="bundle exec stax"

# Fun
alias starwars="telnet towel.blinkenlights.nl"
alias fcow="fortune | cowsay"
alias parrot="curl parrot.live"
alias aq="asciiquarium"

# AWS
alias rax="gimme-aws-creds --register-device"

# DNS
alias cdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"


function weather () {
    curl http://wttr.in/${1}
}

# For reference
# rig                                    # generate random fake identities
# rev <<< "go hang a salami im a lasagna hog" # palindrome
# figlet STRING                          # print ascii bubble text
# lolcat                                 # rainbow colors (gem install lolcat)
# curl http://wttr.in/ann_arbor          # ascii weather report

function ssm_get () {
    aws ssm get-parameter --name "${1}"
}

function installstax () {
    RUBY_VERSION=${1-2.7.0}
    rvm use ${RUBY_VERSION}
    bundle install
}

# k8s
alias k="kubectl"

function kshell() {
    kubectl run jd-test --rm -it --image ${1} -- bash
}

function a_gc() {
    git clone git@github.com:ArcadiaPower/${1}.git
}


