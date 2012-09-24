#SSH_AUTH_SOCK_SCRIPT="/home/bradb/.ssh/ssh_auth_sock.sh"
#SSH_AGENT_RUNNING=`ps -ef | grep ssh-agent | grep -v grep | awk '{print $2}' | xargs`

#if [[ -z $SSH_AGENT_RUNNING ]]; then
#	rm -rf "$SSH_AUTH_SOCK_SCRIPT"
#	ssh-agent | grep -v echo >&"$SSH_AUTH_SOCK_SCRIPT"
#	chmod 600 $SSH_AUTH_SOCK_SCRIPT
#fi

#[[ -e $SSH_AUTH_SOCK_SCRIPT ]] && . $SSH_AUTH_SOCK_SCRIPT

