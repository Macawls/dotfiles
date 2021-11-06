#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

PS1='[\u@\h \W]\$ '

###################
#  ENV VARIABLES  #
###################

#pfetch
export PF_INFO="wm uptime pkgs palette"
export PF_COL1=4
export PF_COL2=7
export PF_ASCII="arch"

pfetch
