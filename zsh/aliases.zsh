alias reload!='. ~/.zshrc'
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

if [[ $OSX -eq 0 ]]
then
	alias ls='ls --color=auto -F'
else
	alias ls='ls -FG'
fi

alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias f='find |grep'
alias c="clear"
alias dir='ls -1'
alias mem="free -m"
alias screen="TERM=xterm screen"
alias ssha="ssh-add"
alias sshd="ssh-add -d"

# command L equivalent to command |less
alias -g L='|less' 

# command S equivalent to command &> /dev/null &
alias -g S='&> /dev/null &'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'

# Show history
alias history='fc -l 1'

alias sl=ls # often screw this up

alias afind='ack-grep -il'

