# AWS Assume Role
source $(which assume-role)

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Sourced from https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Source aliases if exists
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi