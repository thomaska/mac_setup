## Colorize the ls output ##
alias ls="ls -G"
## Use a long listing format ##
alias ll="ls -Alh"
## Show hidden files ##
alias l.="ls -d .* -G"
## get rid of command not found ##
alias cd..="cd .."
## a quick way to get out of current directory ##
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../.."
## Colorize the grep command output for ease of use (good for log files)##
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
# handy short cuts #
alias h="history"
alias j="jobs -l"
