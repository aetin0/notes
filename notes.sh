# notes

## strace 
strace process 2>&1 | grep word
strace -e open process 2>&1 | grep file
strace -e open,access 2>&1 | grep file
strace -p pid
strace -c -p pid
strace -e poll,select,connect,recvfrom,sendto nc www.example.com 80

## dirs
pushd .
popd
dirs -v
cd ~1

## avahi
avahi-browse -alr

## prompt_command
function __prompt_command() {
    local EXIT=$?
    local RCol='\[\e[0m\]'
    local BRed='\[\e[1;41m\]'
    local BGre='\[\e[1;42m\]'
    local BYel='\[\e[1;43m\]'
    local BBlu='\[\e[1;44m\]'
    local BPur='\[\e[1;45m\]'
    PS1="${BGre}\u${RCol}${RCol}@${BBlu}\h:${BPur}\W${BYel}"
    local CodeCol=${BGre}
	  [[ $EXIT -ne 0 ]]\
		    && CodeCol=${BRed}
	  PS1+="${CodeCol}[?=$EXIT]\$${RCol} "
}
export PROMPT_COMMAND=__prompt_command

## history
source !$
!42 # exe 42th command in $(history)
