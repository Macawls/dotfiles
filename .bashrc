#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
alias c='clear;bash'

#exa
alias ls='exa -l --color=always --group-directories-first'  
alias lt='exa -T --color=always --group-directories-first' 
alias cpu='cpufetch'
alias fetch='sysfex'
alias icat='kitty +kitten icat'
alias basedfetch='~/scripts/clones/basedfetch/basedfetch'

#git
source $HOME/scripts/git-prompt.sh
GIT_PS1_SHOWUPSTREAM="auto"

#dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'

#pfetch
export PF_INFO="wm uptime pkgs palette"
export PF_COL1=2
export PF_COL2=8
export PF_ASCII="arch"
export EDITOR="asdas"
pfetch

