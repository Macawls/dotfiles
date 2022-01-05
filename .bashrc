###################
#  ENV VARIABLES  #
###################


#pfetch
export PF_INFO="wm uptime pkgs palette"
export PF_COL1=4
export PF_COL2=7

export EDITOR="vim"

# go 
export GOPATH="$HOME/.go/"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

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

cyan=`tput setaf 6`
red=`tput setaf 3`
green=`tput setaf 2`
end=`tput sgr0`

parse_git_branch ()
{
  color=""  
  if git rev-parse --git-dir >/dev/null 2>&1
  then
    if git diff --quiet 2>/dev/null >&2 
    then
      color="${green}"
    else
      color="${red}"
    fi  
    gitver=" ("${color}$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')${end}')'
  else
    return 0
  fi
  echo -e $gitver
}

############
#  PROMPT  #
############

PS1='\[${cyan}\]\w\[${end}\] ❯$(parse_git_branch) '

#startup
pfetch
#lsx
source ~/.config/lsx/lsx.sh
