export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt SHARE_HISTORY

eval "$(direnv hook zsh)"

alias g='git'
alias dc='docker compose'
alias ll='ls -l'
alias da='direnv allow'
alias z='source ~/.zshrc'
alias gpwd='git symbolic-ref --short HEAD'
alias gc='git status -sbu no | cut -b 4-'
alias nr='npm run'
alias y='yarn'
alias az='unset AWS_VAULT && aws-vault exec y -- zsh'

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/yasuo.fukuda/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PATH="$(brew --prefix python)/libexec/bin:$PATH"
