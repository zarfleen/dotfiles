#------------------------------
# Window title
#------------------------------
case $TERM in
    *xterm*|rxvt|rxvt-unicode|rxvt-256color|rxvt-unicode-256color|(dt|k|E)term)
		precmd () { print -Pn "\e]0;[%n@%M:%~]%#\a" } 
		preexec () { print -Pn "\e]0;[%n@%M:%~]%# ($1)\a" }
	;;
	screen*)
		precmd () { 
			print -Pn "\ek$1\e\\"  
			print -Pn "\e]0;[%n@%M:%~]%#\a" 
		}
		preexec () { 
			print -Pn "\ek$1\e\\"  
			print -Pn "\e]0;[%n@%M:%~]%# ($1)\a" 
		}
	;; 
esac

