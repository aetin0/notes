# notes

## strace 
strace process 2>&1 | grep word
strace -e open process 2>&1 | grep file
strace -e open,access 2>&1 | grep file
strace -p pid
strace -c -p pid
strace -e poll,select,connect,recvfrom,sendto nc www.example.com 80

