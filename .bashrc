###################
#  ENV VARIABLES  #
###################


#pfetch
export PF_INFO="wm uptime pkgs palette"
export PF_COL1=4
export PF_COL2=7
export PF_ASCII="arch"

export EDITOR="vim"

#disable telementary
export DOTNET_CLI_TELEMETRY_OPTOUT=1

[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

#startup
pfetch
