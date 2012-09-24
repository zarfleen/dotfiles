autoload -U promptinit colors
promptinit
colors

#------------------------------
# Prompt
#------------------------------
setprompt () {
	# load some modules
	autoload -U colors zsh/terminfo # Used in the colour alias below
	colors
	setopt prompt_subst

	# make some aliases for the colours: (coud use normal escap.seq's too)
	#for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
	#	eval PR_$color='%{$fg[${(L)color}]%}'
	#done

	for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
	    eval PR_LIGHT_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
	    eval PR_$color='%{$fg[${(L)color}]%}'
	    (( count = $count + 1 ))
	done

	PR_NO_COLOR="%{$terminfo[sgr0]%}"

	# Check the UID
	if [[ $UID -ge 1000 ]]; then # normal user
		eval PR_USER='${PR_LIGHT_GREEN}%n${PR_NO_COLOR}'
		eval PR_USER_OP='${PR_LIGHT_GREEN}%#${PR_NO_COLOR}'
	elif [[ $UID -eq 0 ]]; then # root
		eval PR_USER='${PR_LIGHT_RED}%n${PR_NO_COLOR}'
		eval PR_USER_OP='${PR_LIGHT_RED}%#${PR_NO_COLOR}'
	fi	

	# Check if we are on SSH or not
	if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" || -n "$SSH_CONNECTION" ]]
	then 
		eval PR_HOST='${PR_LIGHT_YELLOW}%M${PR_NO_COLOR}' #SSH
	else 
		eval PR_HOST='${PR_LIGHT_BLUE}%M${PR_NO_COLOR}' # no SSH
	fi
	# set the prompt
	
	eval PR_DECORATION='${PR_LIGHT_BLUE}'

	PS1=$'${PR_DECORATION}[${PR_USER}${PR_DECORATION}@${PR_HOST}${PR_DECORATION}:%~${PR_DECORATION}]${PR_USER_OP} '
	#PS2=$'%_>'
	unset PS2
}
setprompt

