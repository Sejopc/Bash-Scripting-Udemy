#!/bin/bash

echo "Select the file that you want to make private: "

select FILENAME in *;
do
	echo "You picked $FILENAME ($REPLY), it is now only accessible to you."
	chmod go-rwx "$FILENAME"
	break;
done

sleep 5 #At this moment, I just put a sleep cuz I'm learning to use the 'exec' command mentioned on Chap 9 of the LPIC-1 resume from the Evernote note called: LPIC-1
echo Done with the script
