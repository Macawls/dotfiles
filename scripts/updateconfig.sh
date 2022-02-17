#!/usr/bin/env bash

#updates all dotfiles

#colours
white="\033[1;37m"
blue="\033[1;34m"
black="\033[1;40;30m"
yellow="\033[1;33m"
green="\033[1;32m"
red="\033[1;31m"
reset="\033[0m"


# :)
dots="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME" #bare repo
remoteurl="$dots remote show origin | awk '/Push/ {print \$3}'" #origin url for repo
headbranch="$dots branch | awk '{print \$2}'"

branch=$(eval $headbranch)
remote=$(eval $remoteurl)

clear
#output
 cat << "EOF"
 	 :oydmNNmdyo:         
      .smNNNNNNNNNNNNmo`      
     /mNm:+ydhyyhdy+:mNm/     
    +NNNh            dNNN/    
   `NNNm.            -NNNm`   
   :NNNh              dNNN-   
   .NNNN-            -NNNN`   
    sNmdmo-`      `-omNNNo    
     sNy:hmm/    +NNNNNNo     
      :hdo++`    -NNNNh-      
        .+yd.    .dy+.        
EOF


echo -e "\n${yellow}Pushing to  ${green}$remote${green}\n${red}Branch  ${red}$branch"
echo -e "\n${blue}Enter commit message to push all changes to github lol${blue}${white} \n"
echo -n "> "
read msg
while true; do
    echo -e "\n${blue}Cute msg, sure u wanna push to github? lol [y/n] ${blue}${white} \n"
    echo -n "> "
    read yn
    case $yn in
        [Yy]* ) $dots commit -a -m "$msg";$dots push; exit;;
        [Nn]* ) exit;;
        * ) echo -e "${red}Answer YES or NO u sexy mofo${red}";;
    esac
done


