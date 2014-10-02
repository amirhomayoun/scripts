#!/bin/ksh
AUTOMATIC_SUBJECT="$? was returned by $(history -1| cut -c 6- | head -1)"
echo $AUTOMATIC_SUBJECT

if [ $# = 0 ]; then
   SUBJECT=$AUTOMATIC_SUBJECT
   BODY=""
elif [ $# = 1 ]; then
   SUBJECT=$AUTOMATIC_SUBJECT
   BODY=$1
elif [ $# = 2 ]; then
   SUBJECT=$1
   BODY=$2
fi
#echo "$BODY" | mailx -s "$SUBJECT" myEmail@myHost.com
