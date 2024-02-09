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

# Sourced from https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.dbt-completion.bash ]; then
  source ~/.dbt-completion.bash
fi

# Source aliases if exists
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# axotol + starship
eval "$(ax --completion-script-bash)"
eval "$(starship init bash)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/Users/jacob.david/.local/bin:$PATH"


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/jacob.david/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
