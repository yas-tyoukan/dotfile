autoload -Uz compinit && compinit

setopt auto_list
setopt auto_menu
setopt auto_cd
zstyle ':completion:*:default' menu select=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000

setopt share_history

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)" 

export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"

eval "$(direnv hook zsh)"

alias g='git'
alias dc='docker-compose'
alias ll='ls -l'
alias da='direnv allow'
alias z='source ~/.zshrc'

