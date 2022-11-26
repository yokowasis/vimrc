BLACK='\[\e[0;30m\]'
BBLACK='\[\e[1;30m\]'
BGBLACK='\[\e[40m\]'
RED='\[\e[0;31m\]'
BRED='\[\e[1;31m\]'
BGRED='\[\e[41m\]'
GREEN='\[\e[0;32m\]'
BGREEN='\[\e[1;32m\]'
BGGREEN='\[\e[1;32m\]'
YELLOW='\[\e[0;33m\]'
BYELLOW='\[\e[1;33m\]'
BGYELLOW='\[\e[1;33m\]'
BLUE='\[\e[0;34m\]'
BBLUE='\[\e[1;34m\]'
BGBLUE='\[\e[1;34m\]'
MAGENTA='\[\e[0;35m\]'
BMAGENTA='\[\e[1;35m\]'
BGMAGENTA='\[\e[1;35m\]'
CYAN='\[\e[0;36m\]'
BCYAN='\[\e[1;36m\]'
BGCYAN='\[\e[1;36m\]'
WHITE='\[\e[0;37m\]'
BWHITE='\[\e[1;37m\]'
BGWHITE='\[\e[1;37m\]'

PROMPT_COMMAND=smile_prompt

function smile_prompt
{
        if [ "$?" -eq "0" ]
        then
                SC="${GREEN}:)"
        else
                SC="${RED}:("
        fi
        if [ $UID -eq 0 ]
        then
                UC="${RED}"
        else
                UC="${BWHITE}"
        fi
        HC="${BYELLOW}"
        RC="${BGYELLOW}"
        DF='\[\e[0m\]'
        PS1="[${UC}\u${RC}@${RC}\W${DF}] ${SC}${DF} "
}
