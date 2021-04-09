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

alias desk="cd ~/Desktop"
alias docs="cd ~/Documents"

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

# Arcadia
alias test="cd ~/Desktop/test"
alias github="cd ~/Documents/Github"
alias flycatcher="cd ~/Documents/Github/flycatcher"
alias pocono="cd ~/Documents/Github/pocono-swallow"
alias nutcracker="cd ~/Documents/Github/nutcracker"
alias grebe="cd ~/Documents/Github/grebe"
alias snowflake=" cd ~/Documents/Github/Snowflake"

function flycatchersetup () {
    # args are nutcracker_branch, ssm_env
    export NUTCRACKER_BRANCH="$1"
    export SSM_ENV="$2"
    export FLYCATCHER_LOCAL_MODE="true"
}

# Processes
alias p="ps aux | less"

# Text Editing
alias vi="vim"

# Meta
alias vv="vim ~/.vimrc"
alias vba="vim ~/.bash_aliases"
alias vt="vim ~/.tmux.conf"

alias vac="vim ~/.aws/config"

alias vbac="vim ~/.aws/config"

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

#TODO: Should parameterize env and requirements
function venvinstall () {
    if [ ! -d env ]
    then
        python3 -m venv env
    fi
    source env/bin/activate
    if [ -f requirements.txt ]
    then
        pip3 install -r requirements.txt
    fi
}

# Fun
alias starwars="telnet towel.blinkenlights.nl"
alias fcow="fortune | cowsay"
alias parrot="curl parrot.live"
alias aq="asciiquarium"

function weather () {
    curl http://wttr.in/${1}
}

# For reference
# rig                                    # generate random fake identities
# rev <<< "go hang a salami im a lasagna hog" # palindrome
# figlet STRING                          # print ascii bubble text
# lolcat                                 # rainbow colors (gem install lolcat)
# curl http://wttr.in/ann_arbor          # ascii weather report

# Stax
alias s="stax"
alias ys="yes | stax"

alias bes="bundle exec stax"
alias ybes="yes | bundle exec stax"

# Bundle
alias be="bundle exec"

# AWS
alias asr="assume-role"
alias av="aws-vault"

awsrole () {
        unset AWS_VAULT
        eval $(aws-vault exec $1 -- env | grep AWS | sed -e 's/^/export\ /')
        export AWS_PROFILE=${1} 
        export DEFAULT_AWS_PROFILE=${1} 
}

alias ardata="awsrole data-admin"
alias ardev="awsrole dev-admin"
alias arrw="awsrole redshiftwrite"

function installstax () {
  chruby 2.6.6
  bundle install
  awsrole $1
  stax ls
}

# Weechat
function wee () {
    echo 'Virtual environment changed!'
    source ~/Documents/Common/env/bin/activate
    # Prefixing with command due to an issue where this function
    # and the command 'weechat' had the same name.
    command weechat
}

# Emacs
alias emacs="emacs -nw"

# ECR
function ecrlogin() {
  aws ecr get-login-password|docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com
}
function ecr () {
  echo -n "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"
}
function dockerbuild () {
  docker build -t $(ecr)/$1:$(git rev-parse --abbrev-ref HEAD) .
}
function dockerpush () {
  docker push $(ecr)/$1:$(git rev-parse --abbrev-ref HEAD)
}

# VPCs
function vpcdependencies() {
  aws ec2 describe-internet-gateways --filters 'Name=attachment.vpc-id,Values='$1 | grep InternetGatewayId
  aws ec2 describe-subnets --filters 'Name=vpc-id,Values='$1 | grep SubnetId
  aws ec2 describe-route-tables --filters 'Name=vpc-id,Values='$1 | grep RouteTableId
  aws ec2 describe-network-acls --filters 'Name=vpc-id,Values='$1 | grep NetworkAclId
  aws ec2 describe-vpc-peering-connections --filters 'Name=requester-vpc-info.vpc-id,Values='$1 | grep VpcPeeringConnectionId
  aws ec2 describe-vpc-endpoints --filters 'Name=vpc-id,Values='$1 | grep VpcEndpointId
  aws ec2 describe-nat-gateways --filter 'Name=vpc-id,Values='$1 | grep NatGatewayId
  aws ec2 describe-security-groups --filters 'Name=vpc-id,Values='$1 | grep GroupId
  aws ec2 describe-instances --filters 'Name=vpc-id,Values='$1 | grep InstanceId
  aws ec2 describe-vpn-connections --filters 'Name=vpc-id,Values='$1 | grep VpnConnectionId
  aws ec2 describe-vpn-gateways --filters 'Name=attachment.vpc-id,Values='$1 | grep VpnGatewayId
  aws ec2 describe-network-interfaces --filters 'Name=vpc-id,Values='$1 | grep NetworkInterfaceId
}

function s3lastmodified() {
    # arg is name of a bucket
    aws s3 ls $1 --recursive | sort | tail -n 1 | cut -d ' ' -f1,2
}

# Mac
function uq() {
  # arg is /path/to/file
  sudo xattr -d com.apple.quarantine $1
}

# File privleges
function checkprivileges () {
  # arg is /path/to/file
  stat -f %A $1
}

function exportgemfurytoken () {
    export GEMFURY_TOKEN=$(aws ssm get-parameter --name /gemfury/token --with-decryption --query 'Parameter.Value' --output text)
}
