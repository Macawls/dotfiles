###################
#  ENV VARIABLES  #
###################

export OSH=$HOME/.oh-my-bash

#oh-my-bash
OSH_THEME="font"
#pfetch
export PF_INFO="wm uptime pkgs palette"
export PF_COL1=4
export PF_COL2=7
export PF_ASCII="arch"

export EDITOR="nvim"

###############
# OH-MY-BASH  #
###############

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  progress  
  git
  bashmarks
)
source $OSH/oh-my-bash.sh


[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

#pfetch
