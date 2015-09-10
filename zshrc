source ~/.antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
lein
git
brew
osx
EOBUNDLES

antigen apply

antigen theme theunraveler

[[ $EMACS = t ]] && unsetopt zle

alias ls="ls -FC"
alias c=clear
alias cls=clear
alias h=history
alias lsl="ls -lh"
alias hexdump="od -Ax -tx1"
alias mroe="less"
alias df="df -h"
