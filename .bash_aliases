# General
alias c="clear"
alias hc="history -c"
alias h="history"
alias a="alias"
alias r="source ~/.bash_profile"
alias e="exit"
alias ex="export"
alias exp="export -p"

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

# Processes
alias p="ps aux | less"

# Text Editing
alias vi="vim"

# Python
alias python="python3"
alias pip="pip3"

## Dependencies
alias pfr="pip3 freeze > requirements.txt"

# Venv
alias venv="python3 -m venv env"
alias svenv="source env/bin/activate"

# Fun
alias starwars="telnet towel.blinkenlights.nl"
alias fcow="fortune | cowsay"

# Stax
alias s="stax"
alias ys="yes | stax"

alias bes="bundle exec stax"
alias ybes="yes | bundle exec stax"

# Bundle
alias be="bundle exec"

# AWS
alias asr="assume-role"

function installstax () {
  chruby 2.6.6; bundle install; stax ls
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
function vpcdependencies(){
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
