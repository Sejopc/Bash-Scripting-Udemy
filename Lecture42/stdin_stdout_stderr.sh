#!/bin/bash

E_FILE_ACCESS=70
E_BADARGS=71

if [ ! -r "$1" ]
then
	echo "Can't read from input file!"
	echo "Usage: $0 input-file output-file"
	exit $E_FILE_ACCESS
fi

if [ -z "$2" ]
then
	echo "Specify output file!"
	echo "Usage: $0 input-file output-file"
	exit $E_FILE_ACCESS
fi

# A link for an example to understand FD (File Descriptors):
#http://stackoverflow.com/questions/5878384/exec-nm-versus-exec-nm-based-on-sobells-linux-book

# http://stackoverflow.com/questions/7082001/file-descriptors
# NOTE: If you comment the lines: exec 4<&0 and exec 7>&1, it will still work, because is just linking FR, nothing else... 

exec 4<&0 # File descriptor 4 duplicates STDIN (meaning, everything we type, will go to file descriptor 4), or in other words, 'link file descriptor 4, with STDIN'.
exec < $1 # Read from input file (passed as the argument to the script).


exec 7>&1 # Link file descriptor 7 with STDOUT (the reason it changes to '>' is because we're linking it to STDOUT, not STDIN; which uses '<'). In other words, File descriptor 7 duplicates STDOUT. So, if we use for example: exec 3<> /tmp/foo we're basically meaning to link File Descriptor 3 with STDIN and STDOUT to the file /tmp/foo, so after that command if we use: echo "test" >&3, it will write 'test' to the /tmp/foo file. Then we use exec 3>&- to close file descriptor 3.
exec > $2

tr a-z A-z # type: tr --help to remember the syntax and examples. 

exec 1>&7 7>&- # Restore STDOUT and close file descriptor 7. We have to restore it back to the original value (1; which is default for STDOUT), so we're basically meaning, link file descriptor 1 to file descriptor 7 (previously STDOUT).

exec 0<&4 4<&- # Restore STDIN and close file descriptor 4. Again, we use < instead of > because this time is STDIN (<).


