# AWS Assume Role
source $(which assume-role)

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

# Show time commands took place in history
export HISTTIMEFORMAT='%F %T '

# Sourced from https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-completion.zsh
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
# https://stackoverflow.com/questions/24513873/git-tab-completion-not-working-in-zsh-on-mac
autoload -Uz compinit && compinit


# Source aliases if exists
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# non-github stuffs
if [ -f ~/.bash_secret_aliases ]; then
  source ~/.bash_secret_aliases
fi

# axotol + starship
eval "$(ax --completion-script-bash)"
eval "$(starship init zsh)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/Users/jacob.david/.local/bin:$PATH"

# istio
export PATH=$HOME/.istioctl/bin:$PATH

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/jacob.david/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# https://discuss.hashicorp.com/t/terraform-aws-provider-panic-plugin-did-not-respond/23396/5
export GODEBUG=asyncpreemptoff=1;

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
