###################
#  ENV VARIABLES  #
###################


#pfetch
export PF_INFO="wm uptime pkgs palette"
export PF_COL1=4
export PF_COL2=7

export EDITOR="vim"

#disable telementary
export DOTNET_CLI_TELEMETRY_OPTOUT=1

[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

#############
# FUNCTIONS #
#############

function color() {
    perl -e 'foreach $a(@ARGV){print "\e[48:2::".join(":",unpack("C*",pack("H*",$a)))."m \e[49m "};print "\n"' "$@"
}

function flf() {
	du -h -x -s -- * | sort -r -h | head -20;
}

#startup
pfetch

