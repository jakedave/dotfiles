# AWS Assume Role
source $(which assume-role)

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

# Show time commands took place in history
export HISTTIMEFORMAT='%F %T '

# AWS Glue
export SPARK_HOME=/Users/jacob.david/Documents/spark-2.4.3-bin-spark-2.4.3-bin-hadoop2.8

# Sourced from https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Source aliases if exists
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# powerline shell https://github.com/b-ryan/powerline-shell#bash
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


# 12 hour awsrole session
export AWS_SESSION_TOKEN_TTL=12h
export AWS_CHAINED_SESSION_TOKEN_TTL=12h
export AWS_ASSUME_ROLE_TTL=12h
export AWS_FEDERATION_TOKEN_TTL=12h
